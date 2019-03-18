#########################################################################
# File Name     : 8_别名.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月14日 星期四 19时58分56秒
#########################################################################

#!/bin/bash

      
#别名
alias sayhello2='echo hello'

#永久别名
echo 'alias sayhello2="echo hello"' >> ~/.bashrc

#别名传参

alias syssm2='echo $@'

#防止当前系统别名混淆 使用\ 可以执行原来命令

\ls
