#!/bin/bash

a=10
b=20

echo
# !
if [ $a != $b ]
then
   echo "$a != $b : a not equals b"
else
   echo "$a == $b: a equals b"
fi


echo
# -a
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a less than 100 and $b greater than 15 : true"
else
   echo "$a less than 100 and $b greater than 15 : false"
fi


echo
# -o
if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a less than 100 or $b greater than 100 : true"
else
   echo "$a less than 100 or $b greater than 100 : false"
fi


echo
# -o
if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a less than 5 or $b greater than 100 : true"
else
   echo "$a less than 5 or $b greater than 100 : false"
fi