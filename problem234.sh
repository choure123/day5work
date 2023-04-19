
#!/bin/bash

echo "Enter a number: "
read num

len=${#num}

if (( len == 1 )); then
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
        *) echo "Invalid input";;
    esac
elif (( len == 2 )); then
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
        *)  case ${num:0:1} in
                2) echo -n "twenty ";;
                3) echo -n "thirty ";;
                4) echo -n "forty ";;
                5) echo -n "fifty ";;
                6) echo -n "sixty ";;
                7) echo -n "seventy ";;
                8) echo -n "eighty ";;
                9) echo -n "ninety ";;
                *) echo -n "";;
            esac
            case ${num:1} in
                1) echo "one";;
                2) echo "two";;
                3) echo "three";;
                4) echo "four";;
                5) echo "five";;
                6) echo "six";;
                7) echo "seven";;
                8) echo "eight";;
                9) echo "nine";;
                *) echo "";;
            esac
            ;;
    esac
elif (( len == 3 )); then
    case ${num:0:1} in
        1) echo -n "one hundred ";;
        2) echo -n "two hundred ";;
        3) echo -n "three hundred ";;
        4) echo -n "four hundred ";;
        5) echo -n "five hundred ";;
        6) echo -n "six hundred ";;
        7) echo -n "seven hundred ";;
        8) echo -n "eight hundred ";;
        9) echo -n "nine hundred ";;
        *) echo -n "";;
    esac
    if (( ${num:1} == 0 )); then
        echo ""
    else
        echo -n "and "
        ./place-value.sh <<< "${num:1}"
    fi
else
    echo "Invalid input"
fi
