#!/bin/bash
for i in `df |grep '/dev/sd'|tr -s ' ' '%'|cut -d '%' -f1,5`;
do
if [ ${i##/*%} -ge 60 ];then
wall "${i%%%*} is full!!";
fi
done
