#!/bin/bash

# Read year input from user
read -p "Enter a year: " year

# Check if year is a leap year or not
if (( year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 ) )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi
