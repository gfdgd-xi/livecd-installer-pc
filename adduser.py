#!/usr/bin/env python3
'''
已经废弃！
'''
import os
while True:
    i = input("请输入您要使用的用户名：")
    if i.replace(" ", "") != "" and not "'" in i and not '"' in i:
        break
    print("输入有误！")
# 删除错误符号
i = i.replace("#", "").replace("'", "").replace("\"", "").replace(" ", "")
os.system("sudo adduser {}".format(i))
os.system("sudo passwd {}".format(i))
os.system("sudo gpasswd -a {} sudo".format(i))