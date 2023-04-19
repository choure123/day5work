#!/bin/bash  -x
day=$1
month=$2
if [[ $month  -ge 3 && $month  -le 6 ]]; then
if [[ $month  -eq 3 && $day   -ge 20 ||$month -eq 6 && $day -le 20 ||$month   -ge 3 && $month  -lt 6 ]]; then
   echo "true"
else
  echo  "False"
fi
else
   echo "False"
fi
