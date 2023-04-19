#!/bin/bash   -x
var1=10
var2=6
var3=8

if [ $var1 -ge $var2 -a $var1 -ge $var3 ]
then
     echo "var1 si greater."
elif [ $var2 -ge $var1 -a $var2 -ge $var3 ]
then

          echo "var2 is greater."
else

          echo "var3 is greater."
fi

