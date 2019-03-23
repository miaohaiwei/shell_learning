#########################################################################
# File Name     : b2_测试与判断.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月21日 星期四 21时45分15秒
#########################################################################

#!/bin/bash

#测试可以使用test expressio命令 ，但是一般使用[ expression ] [后有空格 ]前有空格

echo 文件测试:
#文件测试是指判断文件是否存在等
[ -e $1 ]
echo "\$\?=$?" #这里通过$?拿到数据

if [ -e $1 ];then
    echo "exits"
fi

#常见文件测试选项
#-d 文件存在且为目录
#-e 文件或目录存在
#-f 文件存在且为普通文件
#-x 可执行文件
#FILE2 -nt FILE2 FILE1比FILE2新
#FILE2 -ot FILE2 FILE1比FILE2旧
echo ------------------
echo ''

echo 字符串测试：
#shell字符串比较主要有 等于= 不等于!= 小于< 大于> 为空-z 不为空-n
str1="dfasf"
str2="dfasf"
str3="dfasa"
str_null=""

if [ "$str1" == "$str2" ]; then
    echo "str1=str2"
fi

if [ -z "$str_null" ]; then
    echo "str is null"
fi

if [ "$str1" /> "$str3" ]; then
    echo "str is null"
fi
