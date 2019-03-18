#########################################################################
# File Name     : 4_文件重定向.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年01月17日 星期四 21时18分38秒
#########################################################################

#!/bin/bash
echo "aaaaa" > temp.txt
echo "bbbbb" > temp.txt
echo "ccccc" >> temp.txt

#文件描述符
#0 标准输入
#1 标准输出
#2 标准错误

# > 这个是默认的标准输出
# 2> 是标准错误
# 2>&1 是将标准错误转为标准输出

ls + > std_output.txt
ls + 2> std_error.txt

#重定向后 依然可以处理 tee工具

echo "tee test" | tee tee_output | grep tee


