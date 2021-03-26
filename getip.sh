#!/bin/bash
echo "Print IP!"


ip_saved=`ifconfig |grep broadcast |awk '{print $2}'`
echo $ip_saved

