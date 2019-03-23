#########################################################################
# File Name     : touch_some_file.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月22日 星期五 23时19分02秒
#########################################################################

#!/bin/bash

for((i=1; i<100; i++))
do 
    touch "somefile_a/$i"
done
