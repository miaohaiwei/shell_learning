#########################################################################
# File Name     : a1_流编辑_sed.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月18日 星期一 10时50分45秒
#########################################################################

#!/bin/bash

#sed格式： sed [options] 'command' file
#多个命令使用-e组合  或者使用;分隔

#替换this为That line为LINE
sed -e 's/this/That/g' -e 's/line/LINE/g' sed_source
echo "-----------------"
sed 's/this/That/g ; s/line/LINE/g' sed_source
echo "-----------------"

#删除命令: d (delete)
#删除第一行，删除地2行，删除1-3行
sed '1d' sed_source
sed '2d' sed_source
sed '1,3d' sed_source
#删除从第2行到最后一行
sed '2,$d' sed_source
#删除最后一行
sed '$d' sed_source
#删除包含关键词empty的行，/正则表达式/
sed '/empty/d' sed_source
#删除空行
sed '/^$/d' sed_source
echo "-----------------"

#查找替换命令 s (subsititution)
#将this开头的 全部 替换为 That
sed "s/^this/That/g" sed_source

#字符转换命令y
sed "y/12345/ABCDe/" sed_source #将1替换成A 将2替换成B 将C替换成D

#行插入命令i  在匹配行之前插入i(insert) 在匹配行之后插入位a (append)
sed "2 i new lien" sed_source
sed "/second/i\newline" sed_source#匹配second，在匹配前插入新行newline

#读入文本
sed "/empty/r /etc/passwd" sed_source #匹配正则empty 使用r 将/etc/passwd 谢傲sed_souce匹配到的那行后面

#使用sed脚本进行处理选项-f 
sed -f sed.rules sed_source


