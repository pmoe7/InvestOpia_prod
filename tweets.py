import tweepy as tw
import pandas as pd
import os

consumer_key= 'deLSinBf8Ork6yE4rBiSHMmSn'
consumer_secret= 'eO3SRNv9voHtgnd9pPJNfVdC2VDG36oVhg4kfGf93YinC1Mzrn'
access_token= '3301432286-A0DZWaUGugrJ6tlZCirWlFX4Lll6KEPT9SnPI64'
access_token_secret= '8YFTwWvV54MagiWxwmbMj4Yb5hYS8AnKNGrVXBPLD5A2Q'

auth = tw.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tw.API(auth, wait_on_rate_limit=True)

def get_tweeets(search_words, date_since, ):
    # Collect tweets
    tweets = tw.Cursor(api.search,
                q=search_words,
                lang="en",
                since=date_since).items(10)

    tweets = [tweet for tweet in tweets]

    return tweets


