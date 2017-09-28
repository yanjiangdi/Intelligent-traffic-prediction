# -*- coding: UTF-8 -*-
import plotly
from plotly.graph_objs import Scatter, Layout
from datetime import datetime,timedelta
import time
import pandas as pd
import plotly.plotly as py
import plotly.graph_objs as go
import datetime


def txt_to_csv(src_path, target_path):
    data = pd.read_csv(src_path, sep=";")
    data.head()
    data.to_csv(target_path)

def ac(row):
    row = row[0].split(",")
    return abs(float(row[0])-float(row[14]))/float(row[14])

def mape(path):
    data = pd.read_csv(path, sep=";")
    data = data.apply(lambda row: ac(row.values.tolist()), axis=1)
    print data.mean()

#文件切割
def split_file(path):
    data = pd.read_csv(path, sep=";")
    data['date'] = data['date'].map(lambda x: time.mktime(time.strptime(x, "%Y-%m-%d")))
    data1 = data[data['date'] >= time.mktime(time.strptime('2016-06-01', "%Y-%m-%d"))]
    data2 = data[data['date'] < time.mktime(time.strptime('2016-06-01', "%Y-%m-%d"))]
    data1['date'] = data1['date'].map(lambda x: time.strftime("%Y-%m-%d", time.localtime(x)))
    data2['date'] = data2['date'].map(lambda x: time.strftime("%Y-%m-%d", time.localtime(float(x))))
    # data['time'] = data['time_interval'].map(lambda x: int(x[12:14]))
    # data =data[data['time'] > 5]
    # data =data[data['time'] < 9]
    # data.drop('time', axis=1, i place=True)
    print data1.head()
    print data2.head()
    data1.to_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\TrainData\\2016.6.csv")
    data2.to_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\TrainData\\2016.3-5.csv")
    #data.to_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\TrainData\\new.csv")

#文件选取
def select_tocsv(path):
    data = pd.read_csv(path, sep=",")
    # print data.head()
    # data['date'] = data['date'].map(lambda x: time.strftime("%Y-%m-%d", time.localtime(float(str(x)[0:10]))))
    # data = data[data['date'] == "2016-05-23"]
    # data['link_ID'] = data['link_ID'].map(lambda x: '{:.0f}'.format(x))
    # data = data.groupby(['width'])['travel_time'].mean()
    # data = data.to_frame()
    data = data.drop(['Unnamed: 0', 'Unnamed: 0.1'], axis=1)
    data['hour'] = data['time_interval'].map(lambda x: x.split(":")[0])
    data['minute'] = data['time_interval'].map(lambda x: x.split(":")[1])
    data['history'] = data.apply(lambda row: )
    print data.info()
    print data.head()
    # data = data[data['link_ID'].isin([4377906285343600514, 4377906288593600514, 4377906284525800514])]
    # print data.head()
    # data.to_csv('C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\PredictData\\width,2016.5.23.csv')

#折线图
def line():
    data = pd.read_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\PredictData\\three_links,2016.5.23.csv", sep=",")
    data = data.sort_values(by='time_interval')
    one = data[data['link_ID'] == 4377906284529999872]
    two = data[data['link_ID'] == 4377906288590000128]
    three = data[data['link_ID'] == 4377906285340000256]
    # print data['link_ID'].map(lambda x: '{:.0f}'.format(x))
    # one = one.sort_values(by='time_interval')
    # three = three.sort_values(by='time_interval')
    print one.head()
    print two.head()
    print three.head()
    trace0 = go.Scatter(
        x=one['time_interval'],
        y=one['travel_time'],
        mode='4377906284529999872',
        name='4377906284529999872'
    )

    trace1 = go.Scatter(
        x=one['time_interval'],
        y=two['travel_time'],
        mode='4377906288590000128',
        name='4377906288590000128'
    )

    trace2 = go.Scatter(
        x=one['time_interval'],
        y=three['travel_time'],
        mode='4377906285340000256',
        name='4377906285340000256'
    )
    data = [trace0, trace1, trace2]
    plotly.offline.plot(data, filename='20160523')

#柱状图
def bar_chart():
    data = pd.read_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\PredictData\\width,2016.5.23.csv")
    print data.head()
    data2 = [go.Bar(
        x=data['width'],
        y=data['travel_time']
    )]
    plotly.offline.plot(data2, filename='width')


#3D图
def three_dimension():
    linkdata = pd.read_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\\new.csv")
    print linkdata.head()
    link_info = pd.read_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\gy_contest_link_info.txt", sep=";")
    link_top = pd.read_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\gy_contest_link_top.txt", sep=";")
    link_traveltime = pd.read_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\gy_contest_link_traveltime_training_data.txt", sep=";")
    data = []
    x_link_traveltime = link_traveltime[link_traveltime['link_ID'] == 3377906288228510514]

    x_link_traveltime['time_interval'] = x_link_traveltime['time_interval'].map(lambda x: x[12:20])
    x_link_traveltime.to_csv("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\\new.csv")
    fill_colors = ['#66c2a5', '#fc8d62', '#8da0cb', '#e78ac3', '#a6d854', '#66c2a5', '#fc8d62']
    linkdata = linkdata.sort_values(by='time_interval')
    gf = linkdata.groupby(['date'])
    data = []
    dates = list(gf.groups.keys())
    dates.sort()
    print dates[0:30]
    for date in dates[12:14]:
    #for date, color in zip(dates[0:30], fill_colors):
        group = gf.get_group(date)
        #group = group.sort_values(by='time_interval')
        x_values = group['time_interval'].tolist()
        x_values.sort()
        y_values = [date]*len(x_values)
        z_values = group['travel_time'].tolist()
        print z_values
        zeros = [0]*len(x_values)
        data.append(dict(
            type='scatter3d',
            mode='lines',
            name='',
            x=x_values,
            y=y_values,
            #
            # y=y_values*2+[y_values[0]],
            z=z_values+zeros+[z_values[0]],
            surfaceaxis=1,
            surfacecolor='#8da0cb',
            line=dict(
                color='black',
                width=4
            ),
        ))
    layout = dict(
            title='link traveltime',
            showlegend=False,
            scene=dict(
                xaxis=dict(title=''),
                yaxis=dict(title=''),
                zaxis=dict(title=''),
                camera=dict(
                    eye=dict(x=-1.7, y=-1.7, z=0.5)
                )
            )
        )

    plotly.offline.plot(data, layout)


if __name__ == '__main__':
    path = "C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\TrainData\\2016.3-5.csv"
    select_tocsv(path)
    # bar_chart()
    #mape("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\PredictData\\2a5b2cee31f0.csv")
    # split_file("C:\Users\ZhiqiangWang\Desktop\SmartTransport\data\TrainData\\1_new.txt")


