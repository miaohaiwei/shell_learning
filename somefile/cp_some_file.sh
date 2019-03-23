#########################################################################
# File Name     : cp_some_file.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月22日 星期五 23时20分23秒
#########################################################################

#!/bin/bash

path=$(cd $1;pwd -P)
echo "path=$path"

for i in ${${`ls $path`}:1:20}
do 
    echo "$path/$i"
done
