#!/bin/bash

echo
# print with line feed
printf "Hello, Shell\n\n"

echo
# format printing with %s %f
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 


echo
# print with arguments
printf "%d %s\n" 1 "abc"
printf '%d %s\n' 1 "abc" 
printf "%s\n" abcdef 


echo
# one %s while multi arguments
printf "%s\n" abc def 
printf "%s %s %s\n" a b c d e f g h i j


echo
# no argument -> output default value of data type
printf "%s and %d \n" 