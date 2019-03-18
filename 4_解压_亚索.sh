#########################################################################
# File Name     : 4_解压_亚索.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月16日 星期六 16时18分10秒
#########################################################################

#!/bin/bash

#gzip只能打包单个文件
#gzip temp/temp.txt
#gunzip temp.gz

#tar
mkdir temp
mkdir temp2
touch temp/tempdd
tar -zcvf temp.tar.gz temp
tar -zxvf temp.tar.gz -C temp2
