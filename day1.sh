#!/bin/bash

file_path="./day1_txt.txt"
total=0
# Use a for loop to read and process each line of the file
IFS=$'\n'   # Set Internal Field Separator to newline
for line in $(cat "$file_path"); do

    # Loop to find first number
    for ((i = 0; i < ${#line}; i++)); do
    char="${line:$i:1}"

    if [[ "$char" =~ [0-9] ]]; then
        first_num=$char
        break
    fi
    done

    # Loop to find last number
    for ((i = ${#line} - 1; i >= 0; i--)); do
    char="${line:$i:1}"
    if [[ "$char" =~ [0-9] ]]; then
        last_num=$char
        break
    fi
    done

    result="${first_num}${last_num}"
    total=$((total + result))



done

echo $total