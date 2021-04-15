from flask import Flask, render_template, url_for, request, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import news
from sqlalchemy import desc
from datetime import date, timedelta
import yfinance as yf
from yahoo_fin import stock_info as si
from sentiment import sentiAnalysis, senti
from datetime import date, timedelta
from tweets import get_tweeets
from flask import Blueprint, flash
from flask_paginate import Pagination, get_page_parameter
import flask
import json
import math
import flask_login
from flask_mysqldb import MySQL
from flask import Flask, render_template, request, redirect, url_for, session, jsonify
import MySQLdb.cursors
import re
from functools import wraps
from trends import get_data

app = Flask(__name__)
app.secret_key = 'ILOVENAOMY'  # Change this!
#app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///investopia.db'


app.config['MYSQL_HOST'] = '127.0.0.1'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'investopia'

mysql = MySQL(app)


#--------------------------------ROUTES------------------------------------------
#--------------------------------LOGIN----------------------------------------------
@app.route('/login', methods=['GET', 'POST'])
def login():
    if 'loggedin' in session:
        return redirect(url_for('index'))
    # Output message if something goes wrong...
    msg = ''
    # Check if "username" and "password" POST requests exist (user submitted form)
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
        # Create variables for easy access
        username = request.form['username']
        password = request.form['password']
        # Check if account exists using MySQL
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM users WHERE username = %s AND password = %s', (username, password,))
        # Fetch one record and return result
        user = cursor.fetchone()
        # If account exists in accounts table in out database
        if user:
            # Create session data, we can access this data in other routes
            session['loggedin'] = True
            session['id'] = user['id']
            session['username'] = user['username']
            session['access_level'] = user['access']
            
            # Redirect to home page
            return redirect(url_for('index'))
        else:
            # Account doesnt exist or username/password incorrect
            msg = 'Incorrect username/password!'
    # Show the login form with message (if any)
    return render_template('login.html', msg=msg)

def login_required(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'loggedin' in session:
            return f(*args, **kwargs)
        else:
            flash("You need to login first")
            return redirect(url_for('login'))

    return wrap

def is_admin():
    if session['access_level'] == 1:
        return True
    
    return False

@app.route('/logout')
@login_required
def logout():
    # Remove session data, this will log the user out
   session.pop('loggedin', None)
   session.pop('id', None)
   session.pop('username', None)
   # Redirect to login page
   return redirect(url_for('login'))
#--------------------------------REGISTER----------------------------------------------
@app.route('/register', methods=['GET', 'POST'])
def register():
    # Output message if something goes wrong...
    msg = ''
    # Check if "username", "password" and "email" POST requests exist (user submitted form)
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form:
        # Create variables for easy access
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']

        # Check if account exists using MySQL
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM users WHERE username = %s', (username,))
        account = cursor.fetchone()
        # If account exists show error and validation checks
        if account:
            msg = 'Account already exists!'
        elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
            msg = 'Invalid email address!'
        elif not re.match(r'[A-Za-z0-9]+', username):
            msg = 'Username must contain only characters and numbers!'
        elif not username or not password or not email:
            msg = 'Please fill out the form!'
            return render_template('register.html', msg=msg)
        else:
            # Account doesnt exists and the form data is valid, now insert new account into accounts table
            cursor.execute('INSERT INTO users VALUES (NULL, %s, %s, %s, 0)', (username, password, email,))
            mysql.connection.commit()
            msg = 'You have successfully registered!'

    elif request.method == 'POST':
        # Form is empty... (no POST data)
        msg = 'Please fill out the form!'
    # Show registration form with message (if any)
    return render_template('register.html', msg=msg)

#----------------------------WEBSITE----------------------------------------------
def scale_number(unscaled, to_min, to_max, from_min, from_max):
    return round((to_max-to_min)*(unscaled-from_min)/(from_max-from_min)+to_min, 2)

def scale_list(l, to_min, to_max):
    return [scale_number(i, to_min, to_max, min(l), max(l)) for i in l]

@app.route("/search")
def search():
    text = request.args['searchText'] # get the text to search for
    # create an array with the elements of BRAZIL_STATES that contains the string
    # the case is ignored
    cursor = mysql.connection.cursor()
    query = "SELECT ticker, company FROM stocks where ticker LIKE '{}%' OR  company LIKE '{}%' ORDER BY ticker LIMIT 10".format(text, text)
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    return json.dumps({"results":result}) 

@app.route('/addStock', methods=['GET', 'POST'])
def addStock():
    # User is not loggedin redirect to login page
    user_id = session['id']
    print("hello")
    ticker = request.form['ticker']
    date_created = datetime.now()
    
    try:
        cur = mysql.connection.cursor()
        cur.execute("SELECT id FROM stocks WHERE ticker = %s", (ticker, ))
        stock = cur.fetchone()
        stock_id = stock[0]

        cur.execute("INSERT INTO user_stocks(user_id, stock_id, date_created) VALUES (%s, %s, %s)", (user_id, stock_id, date_created))
        mysql.connection.commit()
        cur.close()
        return redirect('/')
    except:
        return("There was an error adding the Stock.")

@app.route('/')
@login_required
def index():
    user_id = session['id']
    cur = mysql.connection.cursor()
    cur.execute("SELECT user_stocks.id, stocks.id, ticker, company, sector, market_cap, exch, user_stocks.date_created FROM stocks INNER JOIN user_stocks ON stocks.id = user_stocks.stock_id WHERE user_stocks.user_id = '%s' ORDER BY ticker" % (user_id,))
    stocks = cur.fetchall()
    cur.close()
    return render_template('index.html', username=session['username'], stocks=stocks)

def getPriceHist(stock_data, price):
    price_hist = []
    hist_data = stock_data.history(period="1d", interval="1m")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-2*(price % 3), max(hist_data.values.tolist())-2*(price%3))
    price_hist.append({'dates': hist_data.index.strftime("%m/%d %H:%M").tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="5d", interval="5m")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m/%d %H:%M').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="1mo", interval="15m")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m/%d %H:%M').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="3mo", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="6mo", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="ytd", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="1y", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="3y", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="5y", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})
    
    hist_data = stock_data.history(period="max", interval="1d")
    hist_data = hist_data['Close']
    sample_sentiments = hist_data.values.tolist() #returns a numpy array
    sample_sentiments_scaled = scale_list(sample_sentiments, min(hist_data.values.tolist())-10, max(hist_data.values.tolist())-10)
    price_hist.append({'dates': hist_data.index.strftime('%m-%d-%Y').tolist(), 'prices': hist_data.values.tolist(), 'sentiments': sample_sentiments_scaled})

    return price_hist

@app.route('/trends', methods=['GET', 'POST'])
@login_required
def trends():
    ticker = "SPY"
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM stocks WHERE ticker = %s", (ticker, ))
    stock = cur.fetchone()
    id = stock[0]
    cur.close()

    kw_list = ["Tesla", "Recession", "COVID"]
    iot = trend_iot(kw_list, "today")
    iot_data = []
    iot = iot.drop(labels='isPartial', axis=1)
    stock_data = yf.Ticker(stock[1])
    price = round(stock_data.info['previousClose'], 2)

    price_hist = getPriceHist(stock_data, price)

    for col in iot:
        values = iot[col].tolist()
        scaled = scale_list(values, 0, 100)
        iot_data.append({'dates': iot.index.strftime("%m-%d-%Y").tolist(), 'values': values})
    
    return render_template('trends.html', iot=iot_data, kw_list="TSLA", price_hist=price_hist)    

@app.route('/profile')
@login_required
def profile():
    # Check if user is loggedin
    # We need all the account info for the user so we can display it on the profile page
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute('SELECT * FROM users WHERE id = %s', (session['id'],))
    account = cursor.fetchone()
    # Show the profile page with account info
    return render_template('profile.html', account=account)


@app.route('/delete/<int:id>')
@login_required
def delete(id):
    try:
        sql = "DELETE FROM user_stocks WHERE id = %s"
        val = (id, )
        cur = mysql.connection.cursor()
        cur.execute(sql, val)
        mysql.connection.commit()
        cur.close()
        return redirect('/')
    except:
        return 'There was a problem deleting that task'


@app.route('/update/<int:id>', methods=['GET', 'POST'])
@login_required
def update(id):
    sql = "SELECT * FROM stocks WHERE id = %s"
    val = (id, )
    cur = mysql.connection.cursor()
    cur.execute(sql, val)
    stock = cur.fetchone()
    cur.close()
    if stock == None:
        flash('Error! There was an error fetching the Stock.')
        return redirect('/')

    if request.method == 'POST':
        name = request.form['name']
        ticker = request.form['ticker']

        try:
            sql = "UPDATE stocks SET name = %s,  ticker = %s WHERE id = %s"
            val = (name, ticker, id)
            cur = mysql.connection.cursor()
            cur.execute(sql, val)
            mysql.connection.commit()
            cur.close()
            return redirect('/')
        except:
            return 'There was an issue updating the stock'

    else:
        return render_template('update.html', stock=stock)


def add_news(id, stock, news, top_news):
    for article in news:
        sql = "SELECT title FROM articles WHERE title = %s"
        val = (article['title'], )
        cur = mysql.connection.cursor()
        cur.execute(sql, val)
        exists = cur.fetchall()
        cur.close()

        if not top_news:
            top_news = 0

        if len(exists) == 0:
            date_obj = article['publishedAt']
            date_obj = date_obj.split(" ")
            date_obj[-1] = date_obj[-1][:10]
            date_obj = " ".join(date_obj)
            #print("Date: ", date_obj)
            date_object = datetime.strptime(date_obj, '%Y-%m-%d').date()#2020-05-15T14:53:24Z
            
            s1 = senti('blob', article['title']).polarity
            s2 = 0

            if article['description']:
                s2 = senti('blob', article['description']).polarity

            sentiment = (s1 + s2) / 2

            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO articles VALUES (NULL, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (id, top_news, article['author'], article['source']['name'], article['title'], article['description'], date_object, article['content'], article['url'], article['urlToImage'], sentiment, ))
            mysql.connection.commit()
            cur.close()

    return "Succes! News have been added"


@app.template_filter()
def currencyFormat(value):
    try:
        if value:
            value = float(value)
        else:
            value = 0
    except:
        return value
    return "${:,.2f}".format(value)

@app.template_filter()
def millify(n):
    millnames = ['',' K',' M',' B',' T']
    n = float(n)
    millidx = max(0,min(len(millnames)-1, int(math.floor(0 if n == 0 else math.log10(abs(n))/3))))

    return '{:.3f}{}'.format(n / 10**(3 * millidx), millnames[millidx])

@app.template_filter()
def commaFormatINT(value):
    value = float(value)
    return "{:,.0f}".format(value)

@app.template_filter()
def commaFormat(value):
    value = float(value)
    return "{:,.2f}".format(value)


@app.template_filter()
def getSentiment(sentence):
    if sentence:
        blob = senti("blob", sentence)
        sid = senti("sid", sentence)
        return round(blob.polarity, 2)
    return None


def latest_top_news(stock_id, sdate, edate):
    sql = "SELECT * FROM articles WHERE stock_id = %s AND top_news = %s AND date BETWEEN %s and %s ORDER BY date DESC"
    val = (stock_id, 1, sdate, edate)
    cur = mysql.connection.cursor()
    cur.execute(sql, val)
    latest_top_news = cur.fetchall()
    cur.close()

    return latest_top_news

def latest_all_news(stock_id, sdate, edate):
    sql = "SELECT * FROM articles WHERE stock_id = %s AND top_news = %s AND date BETWEEN %s and %s ORDER BY date DESC"
    val = (stock_id, 0, sdate, edate)
    cur = mysql.connection.cursor()
    cur.execute(sql, val)
    latest_all_news = cur.fetchall()
    cur.close()

    return latest_all_news

@app.route('/view/<string:ticker>', methods=['GET', 'POST'])
@login_required
def view(ticker):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM stocks WHERE ticker = %s", (ticker, ))
    stock = cur.fetchone()
    id = stock[0]
    top_news = []
    all_news = []

    try:
        top_news = news.top_news(stock[2])
        all_news = news.all_news(stock[2])
        add_news(id, stock, top_news, top_news=1)
        add_news(id, stock, all_news, top_news=0)
    
        top_news = news.top_news(stock[1])
        all_news = news.all_news(stock[1])
        add_news(id, stock, top_news, top_news=1)
        add_news(id, stock, all_news, top_news=0)
    except:
        print("Error fetching news from DB")

    total_news = top_news + all_news
    print(stock[1])
    stock_data = yf.Ticker(stock[1])
    print(stock_data.get_info())
    price = 0
    prev_close = 1
    sus_data = []
    try:
        price = round(stock_data.info['regularMarketPrice'], 2)
        sus_data = stock_data.sustainability.values
    except:
        print("Error fetching sustainability data")
        
    try:
        prev_close = round(stock_data.info['previousClose'], 2)
        mktCap = millify(stock_data.info['marketCap'])
        cur.execute("UPDATE stocks SET LastPrice=%s WHERE id=%s", (price, id, ))
        mysql.connection.commit()
        cur.execute("UPDATE stocks SET MarketCap=%s WHERE id=%s", (mktCap, id, ))
        mysql.connection.commit()
        cur.close()
    except:
        #return("Price not fetched")
        print("Error fetching price")

    today = datetime.now()
    start = today - timedelta(14)
    #print(start)

    l_top_news = latest_top_news(id, start, today)
    l_all_news = latest_all_news(id, start, today)
    rows = len(l_top_news) + len(l_all_news)
    news_sentiment = 0
    if len(total_news) > 0:
        news_sentiment = sentiAnalysis(total_news, "news")
    else:
        print("No new news")

    # Define the search term and the date_since date as variables
    search_words = stock[1] + "," +  stock[2]
    date_since = date.today() - timedelta(5)

    tweets= get_tweeets(search_words, date_since)
    tweets_text = [tweet.text for tweet in tweets]
    
    num_tweets = len(tweets_text)
    sentiment = 0
    tweets_sentiment = 0
    if num_tweets > 0:
        tweets_sentiment = sentiAnalysis(tweets_text, "tweets")
        sentiment = (news_sentiment + tweets_sentiment) / 2
    
    price_hist = getPriceHist(stock_data, price)


    num_buy = 0
    num_hold = 0
    num_sell = 0

    banks = ["JP Morgan", "Morgan Stanley", "Goldman Sachs", "Bank of America", "Jefferies", "Deutsche Bank", "Barclays", "Lazard", "S&P Capital IQ", "UBS", "Credit Suisse", "RBC Capital", "Citigroup", "Citi"]

    analyst_recom = []
    num_recom = 0

    try:
        if stock_data.recommendations.bool:
            for recommendation in stock_data.recommendations.values:
                if recommendation[0] in banks:
                    analyst_recom.append(recommendation)
                    if recommendation[1]=="Buy" or recommendation[1]=="Overweight" or recommendation[1]=="Outperform":
                        num_buy+= 1
                    elif recommendation[1]=="Sell" or recommendation[1]=="Underweight" or recommendation[1]=="Underperform":
                        num_sell += 1
                    elif recommendation[1]=="Neutral" or recommendation[1]=="Hold" or recommendation[1]=="Equal-Weight" or recommendation[1]=="Market Perform":
                        num_hold+=1
        
            num_recom = num_buy + num_hold + num_sell
    except:
        pass

    return render_template('view.html', sus_data=sus_data, analyst_recom=analyst_recom, numRecom=num_recom, numSell=num_sell, numHold=num_hold, prev_close=prev_close, numBuy=num_buy, top_news=l_top_news, all_news=l_all_news, price_hist=price_hist, stock=stock, records=rows, stock_data=stock_data, price=price, news_sentiment=news_sentiment, tweets_sentiment=tweets_sentiment, sentiment=sentiment, tweets=tweets[:10], num_tweets=num_tweets)





@app.route('/ts', methods=['GET', 'POST'],defaults={'ticker': None})
@app.route('/ts/<string:ticker>', methods=['GET', 'POST'])
def ts(ticker):
    plots = []
    if request.method == 'POST':
        ticker = request.form['ticker']
        plots = get_data(ticker)
        return render_template('ts.html', plots=plots, ticker=ticker)
    return render_template('ts.html', plots=plots, ticker=ticker)

@app.route('/predictions')
def predictions():
    return render_template('predictions.html')

#-----------------------------------------ADMIN---------------------------------
@app.route('/admin', methods=['GET', 'POST'])
@login_required
def admin():
    if 'loggedin' not in session:
        return redirect(url_for('login'))
    return render_template('admin.html')

def get_count(q):
    count_q = q.statement.with_only_columns([func.count()]).order_by(None)
    count = q.session.execute(count_q).scalar()
    return count

@app.route('/admin/news/')
def admin_news():
    search = False
    q = request.args.get('q')
    if q:
        search = True

    page = request.args.get(get_page_parameter(), type=int, default=1)

    news_total = Article.query.order_by(desc(Article.date)).paginate(page=page, per_page=5)
    news= news_total.items

    rows = news_total.count
    pagination = Pagination(page=page, total=news_total.count(), search=search, record_name='news')

    return render_template('news.html', news=news, pagination=pagination, records=rows)


if __name__ == "__main__":
    app.run(debug=True)
