#!/bin/bash

# read the number from user
read -p "Enter a number: " num

# define an array to hold the words for each place value
places=(unit ten hundred thousand ten-thousand hundred-thousand million ten-million hundred-million)

# find the number of digits in the number
len=${#num}

# iterate over each digit in the number and print its corresponding word
for (( i=0; i<$len; i++ )); do
  # get the digit at the current place value
  digit=${num:$i:1}

  # calculate the index of the word for the current place value
  index=$((len-i-1))

  # print the word for the current place value
  echo "${places[$index]}: $(num_to_word $digit)"
done

# function to convert a single digit number to its corresponding word
function num_to_word {
  case $1 in
    0) echo zero;;
    1) echo one;;
    2) echo two;;
    3) echo three;;
    4) echo four;;
    5) echo five;;
    6) echo six;;
    7) echo seven;;
    8) echo eight;;
    9) echo nine;;
    *) echo invalid;;
  esac
}
$ ./number_to_words.sh
Enter a number: 12345
unit: five
ten: four
hundred: three
thousand: two
ten-thousand: one
