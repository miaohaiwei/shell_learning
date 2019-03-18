#########################################################################
# File Name     : a2_awk.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月18日 星期一 14时50分47秒
#########################################################################

#!/bin/bash

echo "---------------"
echo 打印第一列和地2猎
awk '{print $1, $2}' awk_source

echo "---------------"
echo 打印所有
awk '{print $0}' awk_source

echo "---------------"
echo 指定分隔符
awk -F. '{print $1}' awk_source

echo "---------------"
echo 查看每行域的个数 NF
awk '{print NF}' awk_source

echo "---------------"
echo 查看倒数第一列和第二列：
awk '{print $NF}' awk_source
awk '{print $(NF-1)}' awk_source

echo "---------------"
echo '截取字符串 ：#substr(指定域，第一个开始字符索引，第二个开始字符索引)'
awk '{print substr($1,3)}' awk_source

echo "---------------"
echo '确定字符串长度'
awk '{print length}' awk_source






