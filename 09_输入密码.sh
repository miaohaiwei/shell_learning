#########################################################################
# File Name     : 9_输入密码.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月14日 星期四 20时11分15秒
#########################################################################

#!/bin/bash


#打印
echo enter password
#关闭输出
stty -echo
#读取密码
read password
#打开输出
stty echo
#输出信息

echo "your password is ${password}"
