#######################################################################
# File Name     : 3_文件操作.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月16日 星期六 13时58分27秒
#########################################################################

#!/bin/bash

mkdir temp
touch temp/temp.txt
pwd -L
pwd
#显示真实的路径，不是软连接
pwd -P
echo "fasdfasdf\nfasdfs\n" >>temp/temp.txt

#工作目录OLDPWD
echo $OLDPWD

实时更新
tail -f temp/temp.txt
cat -n temp/temp.txt

#查看文件隐藏属性
lsattr temp/temp.txt

#改变文件隐藏属性
#chattr +a temp/temp.txt

#查看文件类型
file temp/tmep.txt

#查找文件
find temp -name temp.txt
find temp -name *.txt
#man find

#高效查找locate
locate temp.txt


#查找可执行文件
which passwd
