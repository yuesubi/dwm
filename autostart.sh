#!/bin/bash


# START APPLICATIONS
picom &
nitrogen --restore &

setxkbmap -layout fr &
numlockx &

lxsession &
udiskie &

python $HOME/dev/py/kanji/main.py &


# BAR
cpuload=''

ramdata=''
ramusage=''
ramavailable=''

currdate=`date | awk '{ print $1, $3, $2 }'`
currtime='12:00'


#while [ 1 == 1 ]; do
#
#    ramdata=`free | grep "^Mem:"`
#    ramusage=`$ramdata | awk -F '[[:blank:]:]+' '{ printf "%d", $3 }'`
#    ramavailable=`$ramdata | awk -F '[[:blank:]:]+' '{ printf "%d", $2 }'`

#    currtime=`date | awk -F '[[:blank:]:]+' '{ if ($7 == "AM") { printf "%s:%s", $4, $5 } else { printf "%s:%s", $4 + 12, $5 } }'`

    # NET 000B ↓↑ 001K |
#    xsetroot -name " CPU  10% | RAM $ramusage/$ramavailable | $currdate $currtime "

#    sleep 1

#done
