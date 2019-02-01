#!/bin/bash
# Author : Mohamed Eisa
# Date: 1/31/2019

#Problem 1 Code:
echo "Enter the regular expression"
read regexp
echo "Enter filename"
read file
#takes all number 0-9, with 3, 3, and 4 units and counts them
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}$' $file 
# counts all emails that start from A-z unitl @, then A-z until(.) and the ending
grep -c '[A-Za-z0-9]\@[A-Za-z0-9]\+.[A-Za-z0-9]' $file
#stores all numbers starting with 303 into phone_results.txt by outputting each in the file
grep -o '[3][0][3]\-[0-9]\{3\}\-[0-9]\{4\}$' $file >> phone_results.txt
# Parse out all emails that have geocities.com and places them inside email_results.txt
grep 'geocities.com' $file >> email_results.txt
#all the lines that contain regexp would be stored in the command_results.txt
grep $regexp $file >> command_results.txt
#Make sure to document how you are solving each problem!

