#!/bin/bash

read -p "Enter a number: " num

len=${#num}

case $len in
    1)
        case $num in
            0) echo "zero";;
            1) echo "one";;
            2) echo "two";;
            3) echo "three";;
            4) echo "four";;
            5) echo "five";;
            6) echo "six";;
            7) echo "seven";;
            8) echo "eight";;
            9) echo "nine";;
        esac
        ;;
    2)
        case $num in
            10) echo "ten";;
            11) echo "eleven";;
            12) echo "twelve";;
            13) echo "thirteen";;
            14) echo "fourteen";;
            15) echo "fifteen";;
            16) echo "sixteen";;
            17) echo "seventeen";;
            18) echo "eighteen";;
            19) echo "nineteen";;
            *)
                tens=$(echo $num | cut -c1)
                ones=$(echo $num | cut -c2)
                case $tens in
                    2) echo -n "twenty ";;
                    3) echo -n "thirty ";;
                    4) echo -n "forty ";;
                    5) echo -n "fifty ";;
                    6) echo -n "sixty ";;
                    7) echo -n "seventy ";;
                     8) echo -n "eighty ";;
                     9) echo -n "ninety ";;
                esac
                case $ones in
                    0) echo " ";; 
                    1) echo "one";;
                    2) echo "two";;
                    3) echo "three";;
                    4) echo "four";;
                    5) echo "five";;
                    6) echo "six";;
                    7) echo "seven";;
                    8) echo "eight";;
                    9) echo "nine";;
                esac
                ;;
        esac
        ;;
    3)
        hundreds=$(echo $num | cut -c1)
        echo -n "$(echo $num | cut -c2-3) = "
        case $hundreds in
            1) echo -n "one hundred ";;
            2) echo -n "two hundred ";;
            3) echo -n "three hundred ";;
            4) echo -n "four hundred ";;
            5) echo -n "five hundred ";;
            6) echo -n "six hundred ";;
            7) echo -n "seven hundred ";;
            8) echo -n "eight hundred ";;
            9) echo -n "nine hundred ";;
        esac
        ;;
    *)
        echo "Invalid input";;
esac
