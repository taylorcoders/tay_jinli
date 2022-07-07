#!/usr/bin/env python3
# -*- coding: utf-8 -*
'''
cron: 0 0 * * * jlhb.py
new Env('京东 -*- 锦鲤红包')
入口: 京东首页>领券>锦鲤红包
变量: JD_COOKIE,KOIS_PINS,JD_LOG_XYZ_TOKEN,Proxy_Url
可选 export Proxy_Url='代理网址 推荐星空 生成选择txt 一次一个'
必须 export JD_LOG_XYZ_TOKEN="锦鲤 token" 
必须 export KOIS_PINS=" 第1个cookie的pin & 第2个cookie的pin "
可选 export XYZJinLinHost="获取log的服务端URL"
环境变量KOIS_PINS中填入需要助力的pt_pin，有多个请用 '&' 符号连接
'''
from jd_jlhb import *

if __name__ == '__main__':
	start()