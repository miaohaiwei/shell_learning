#########################################################################
# File Name     : 1_echo.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年01月17日 星期四 19时47分43秒
#########################################################################

#!/bin/bash
echo hello;hello#会报错
echo 'hello;heloo'
echo "hello;heloo"
echo "hello - \! heloo"
#有颜色的打印
echo -e "\e[31m This is red \e[0m"
#有颜色背景的打印
echo -e "\e[42m this is green background \e[0m"
