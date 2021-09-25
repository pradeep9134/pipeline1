#!/bin/bash
num=5
fact=1
while [ $num -ge 1 ]
do
fact=`expr $fact \* $num`
num=`expr $num - 1`
done
num=5
echo " fact of $num is $fact"
