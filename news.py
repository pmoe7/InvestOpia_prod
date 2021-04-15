from newsapi import NewsApiClient

newsapi = NewsApiClient(api_key='d90e791bf97a4135b7a511de5c245f36')

def sources():
    news_sources = newsapi.get_sources()
    #for source in news_sources['sources']:
        #print(source['name'])
    return news_sources

def top_news(keyword, language="en"):
    top_headlines_us = newsapi.get_top_headlines(q=keyword, country='us', category='business', language=language,)
    top_headlines_ca = newsapi.get_top_headlines(q=keyword, country='ca', category='business', language=language,)
    top_headlines = top_headlines_us['articles'] + top_headlines_ca['articles']

    #for article in top_headlines['articles']:
        #print('Title : ',article['title'])
        #print('Description : ',article['description'],'\n\n')

    return top_headlines

def all_news(keyword):
    all_articles = newsapi.get_everything(q=keyword, sort_by='relevancy', language='en',)

    #for article in all_articles['articles']:
        #print('Source : ',article['source']['name'])
        #print('Title : ',article['title'])
        #print('Description : ',article['description'],'\n\n')
    
    return all_articles['articles']

print(top_news("Tesla"))