from conn import con
import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt, mpld3
import numpy as np
import io
import base64

def get_data(ticker):
    #print("Getting data for: ", ticker)
    plots = []
    try:
        sql = "SELECT date, close, volume FROM hist_data WHERE ticker = '%s' and date > '2010-01-01'" % ticker
        df = pd.read_sql(sql, con)
        df['year'] = pd.DatetimeIndex(df['date']).year
        df['month'] = pd.DatetimeIndex(df['date']).month
        dfPivot = pd.pivot_table(df, values = "close", columns = "year", index = "month")
        #print(dfPivot.head)        
        #
        fig1 = plt.figure(figsize=(16, 5))
        years = plt.plot(dfPivot)
        plt.axvline(x=2.5, linewidth=1, color='black')
        plt.axvline(x=5.5, linewidth=1, color='black')
        plt.axvline(x=8.5, linewidth=1, color='black')
        plt.xlabel('Month')
        plt.ylabel('Price')
        plt.xlim((1,12))
        fig1.tight_layout()
        plt.legend(years, dfPivot.columns.tolist())
        html1 = mpld3.fig_to_html(fig1)
        plots.append(html1)

        size = len(dfPivot.columns)
        fig2 = plt.figure(figsize=(16, 15))
        plt.xlim((1,12))
        i = 1
        for year in dfPivot:   
            ax = fig2.add_subplot(size//3+1, 3, i)         
            ax.plot(dfPivot.index, dfPivot[year])
            ax.set_title(str(year))
            i += 1
        fig2.tight_layout()
        html2 = mpld3.fig_to_html(fig2)
        plots.append(html2)

    except Exception as e:
        print("Error in fetching data!", e)
    
    return plots
    


