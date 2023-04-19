

#!/bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

op1=$(echo "scale=2; $a + $b * $c" | bc)
