#########################################################################
# File Name     : 2_variabel.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年01月17日 星期四 19时58分55秒
#########################################################################

#!/bin/bash

#变量
#变量定义
var1=value
var2=value2
var3="value 3"

#取消变量
unset var1

#打印变量
echo $var1
echo '$var2' #will print $var2,所以''不能打印里面的内容
echo "${var3}"

#环境变量
#环境变量是所有程序都会继承使用的变量,系统给我们定义了很多标准环境变量
#PATH就是一种标准的环境变量，用来查看用户执行文件的，一般在/etc/profile和bashrc中定义
echo "path = ${PATH}"
#添加环境变量可以使用export 如：export PATH="${PATH}:/home/bin"

#变量长度
length=${#var1}
echo "length = ${length}"

#获取当前使用的shell路径
echo $SHELL
echo "\$0=$0"

#判断执行当前shell的用户是否为root
echo "\$UID = ${UID}"

if [ ${UID} -ne 0 ]; then
    echo 'not root '
else
    echo 'root user'
fi

#设置变量生命后才可以使用
#shopt -s -o nounset

#局部变量
fun1(){
    local var_02=200
}

#算数表达式 $(())
i=2
echo i+2=$((i+2))
