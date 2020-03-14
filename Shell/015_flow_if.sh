#!/bin/bash

a=10
b=20


echo
# single if
if [ $a != $b ]
then
   echo "a != b"
fi

echo
# if else
if [ $a -eq $b ]
then
    echo 'equals'
else
    echo 'not equals'
fi

echo
# if, else if, else
if [ $a == $b ]
then
   echo "a == b"
elif [ $a -gt $b ]
then
   echo "a > b"
elif [ $a -lt $b ]
then
   echo "a < b"
else
   echo "Error"
fi

echo
# if -> command grep
if [ $(ps -ef | grep -c "bash") -gt 1 ]; then echo "true"; fi