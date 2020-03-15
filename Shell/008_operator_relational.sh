#!/bin/bash

a=10
b=20

echo
#operator, equal
if [ $a -eq $b ]
then
   echo "$a -eq $b : a equals b"
else
   echo "$a -eq $b: a not equals b"
fi


echo
#operator, not equal
if [ $a -ne $b ]
then
   echo "$a -ne $b: a not equals b"
else
   echo "$a -ne $b : a equals b"
fi

echo
#operator, a greater than b
if [ $a -gt $b ]
then
   echo "$a -gt $b: a greater than b"
else
   echo "$a -gt $b: a not greater than b"
fi

echo
#operator, a less than b
if [ $a -lt $b ]
then
   echo "$a -lt $b: a less than b"
else
   echo "$a -lt $b: a not less b"
fi

echo
#operator, a equals / greater than b
if [ $a -ge $b ]
then
   echo "$a -ge $b: a equals / greater than b"
else
   echo "$a -ge $b: a not equals / greater than b"
fi

echo
#operator, a equals / less than b
if [ $a -le $b ]
then
   echo "$a -le $b: a equals / less than b"
else
   echo "$a -le $b: a not equals / less than b"
fi