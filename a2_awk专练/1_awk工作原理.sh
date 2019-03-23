#########################################################################
# File Name     : 1_awk工作原理.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月20日 星期三 17时28分56秒
#########################################################################

#!/bin/bash

#格式： awk 'BEGIN {statements} patter{ commands} END{print end}' file
#awk可以接受stdin 也可以直接读入文件
#awk代码作为第二参数字符串传入，包括三部分，每一部分都可以省略
#首先执行BEGIN代码块，一般这部分是表头打印，变量初始化等
#然后开始以行为单位读取file中的数据，每读完一行进行这一行与pattern的匹配，如果匹配上了则执行commands命令，默认模式匹配上，commands不写默认是print ，就是打印行的全部内容
#最后执行END中的命令，一般是统计变量等打印

echo 这个是说明执行顺序的例子
echo -e "asfa asfsadf\nfadsfas fasfd\nfasdfasdf \n" | awk 'BEGIN{print "start"} {print} END{print "END"}'

echo ---------------------

echo 下面是记录行数在i变量上，然后打印i的例子
echo -e "asfa asfsadf\nfadsfas fasfd\nfasdfasdf \n" | awk 'BEGIN{i=0} {i++} END{print i}'
#输出为4，有4行


