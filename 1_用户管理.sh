#########################################################################
# File Name     : 1_用户管理.sh
# Author        : miaohaiwei
# mail          : 748750443@qq.com
# Created Time  : 2019年03月15日 星期五 21时11分17秒
#########################################################################

#!/bin/bash

#用户信息 存放在/etc/passwd中，包含用户名 用户UID GID HOME路径 shell，密码存在shadow，是加密过的，只要root用户看一访问

#新增用户
useradd temp
#在root用户下 配置密码
#passwd temp

#普通用户只能配置自己的密码
passwd

#冻结用户
usermod -L temp

#解锁用户
usermod -U temp

#删除用户
userdel temp

#查看用户
who

#查看远程用户登录信息
w
