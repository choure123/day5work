#!/bin/bash   -x
sun=0
count=5

  echo  "generating $count random 2-digit number...."
for  (( i=1; i<=$count; i++))
do
     num=$(( RAMDOM % 90 + 10 ))
     sun=$(( sun + num))
     echo  "Number $1:$num"
done
averge=$(echo "scale=2; $sum  /$count" |bc)
 echo "sun:  $sum"
 echo "Average: $average"

