#!/bin/bash

a="abc"
b="efg"
c="     "


echo
# detect string equals
if [ $a = $b ]
then
   echo "$a = $b : a equals b"
else
   echo "$a = $b: a not equals b"
fi

echo
# detect string not equals
if [ $a != $b ]
then
   echo "$a != $b : a not equals b"
else
   echo "$a != $b: a equals b"
fi

echo
# detect string length is zero
if [ -z $a ]
then
   echo "-z $a : length of string is ZERO"
else
   echo "-z $a : length of string is NOT ZERO"
fi

echo
# detect string length is not zero
if [ -n "$b" ]
then
   echo "-n $b : length of string is NOT ZERO"
else
   echo "-n $b : length of string is ZERO"
fi

echo
# detect empty string (with trim())
if [ $c ]
then
   echo '$c' "$c : not empty string"
else
   echo '$c' "$c : empty string"
fi