#########################################################################
# File Name     : 3_数值计算.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年01月17日 星期四 20时52分36秒
#########################################################################

#!/bin/bash

#数值计算

#整数定义
no1=3
no2=4

#let工具 只能用于整数
let result=no1+no2
echo $result
let res2=no1+5
echo $res2
let no2+=3
echo $no2
let no1--
echo $no1
let N=2**3 #2的3次方
let M=15%7 #取余


#bc 可进行浮点数的运算
echo 基本运算:
echo 4x0.45=`echo '4 * 0.45' | bc`

echo 变量带入:
no=21.3
res=`echo "$no*1.5" | bc`
echo $res

echo "设置小数精度:"
echo "scale=2;3/8" | bc

echo 进制转换:
echo "obase=2;5" | bc

echo 平方根
echo "sqrt(100)" | bc
echo "10^10" | bc



