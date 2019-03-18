#########################################################################
# File Name     : 6_文本简单处理.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月16日 星期六 19时32分11秒
#########################################################################

#!/bin/bash

#grep
#独立的使用
#icnv 分别是不区分大小写 统计行数 输出行号 反相匹配
echo "txt:"
cat txt_process/txt
echo "\ngrep的直接使用:"
grep -in "深圳" txt_process/txt

#-n t k r  数字拍苏 分隔符 指定第几列 反向排序
cat temp/sort | sort
cat temp/sort |sort -t ":" -k 2 #按照：分割取地2猎
cat temp/sort |sort -t ":" -k 2 -n  #按照：分割取地2猎  按照数值计算

#uniq只能进行相邻的去重，所以要和sort一起用 -i c 忽略大小写 计算重复行数
cat txt_process/uniq | sort| uniq 

#cut 选取指定内容
cat /etc/passwd | cut -d ":" -f 1,2-5
cat /etc/passwd | cut -c 1,2-3


#按行合并两个文件，中间用":"分割开
paste -d : txt_process/a txt_process/b

