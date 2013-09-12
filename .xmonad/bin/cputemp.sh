#!/bin/bash
temp1=`cat /sys/devices/platform/coretemp.0/temp2_input`
echo `expr $temp1 / 1000`
