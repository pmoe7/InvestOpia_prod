import yfinance as yf

stock_data = yf.Ticker("TSLA")

#print(stock_data.info)
hist_data = stock_data.history(period="ytd")
hist_data = hist_data['Close'].values
print("YTD: ", hist_data)