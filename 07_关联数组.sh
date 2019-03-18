#########################################################################
# File Name     : 7_关联数组.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月13日 星期三 22时59分22秒
#########################################################################

#!/bin/bash

#关联数组 就是 hash map

#关联数组定义
declare -A ass_arr

#关联数组赋值
ass_arr=([apple]='100d' [orange]='120')

ass_arr[pad]="1200"


#关联数组提取
echo "apple costs ${ass_arr[apple]}"
echo "pad costs ${ass_arr[pad]}"

#列出索引列表
echo "index list : ${!ass_arr[*]}"
