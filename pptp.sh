#!/bin/sh
if [ `ps -ef | awk '{print $1,$2,$8}'| grep pptp | wc -l` -lt 2 ]; then
/etc/myip/myip-down
#/etc/ppp/stoppptp.sh
sleep 5
/etc/myip/myip-up
#/etc/ppp/startpptp.sh
fi
