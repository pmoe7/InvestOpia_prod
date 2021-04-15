import nltk
nltk.download('vader_lexicon')
from nltk.sentiment.vader import SentimentIntensityAnalyzer
from textblob import TextBlob


def senti(model, sentence):
    if model == "sid":
        sid = SentimentIntensityAnalyzer()
        return sid.polarity_scores(sentence)
    elif model=="blob":
        return TextBlob(sentence).sentiment
    else:
        "Error! Sentiment analysis couldn't be perfomed due to invalid model."

    return

def sentiAnalysis(arr, type):
    overall_sid = 0
    overall_blob = 0

    if type=="news":
        for article in arr:
            title=article['title']
            desc=article['description']
            sid = senti("sid", title)
            overall_sid += sid['compound']
            if desc:
                blob = senti("blob", desc)
                overall_blob += blob.polarity
    else:
        for tweet in arr:
            sid = senti("sid", tweet)
            overall_sid += sid['compound']
            blob = senti("blob", tweet)
            overall_blob+= blob.polarity

    return round(overall_blob / len(arr), 2)
