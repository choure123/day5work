#!/bin/bash  -x
random1=$((RANDOM%111))
random2=$((RANDOM%57))
random3=$((random1+random2))

      echo "sum of random and random2 is random3."
if [ $random1 -ge $random2 ]
then 
     echo "random1 is greater."
else
      echo "random2 is greater."

fi
