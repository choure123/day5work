#!/bin/bash   -x
min=99
max=100
for i in {1..5}
do
   num=$((RAMDOM % 900 + 100))
   if [ $num -lt $min ];then
    min=$num
fi
if   [ $num  -ge $max ];then
     max=$num
    fi
done
