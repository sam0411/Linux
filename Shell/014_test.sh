#!/bin/bash


echo
# test, -eq
num1=100
num2=100

if test $[num1] -eq $[num2]
then
    echo 'equals'
else
    echo 'not equals'
fi

echo
# test, string
s1="ru1noob"
s2="runoob"
if test $s1 = $s2
then
    echo 'equals'
else
    echo 'not equals'
fi


echo
# test, file
cd /bin
if test -e ./bash
then
    echo 'File exist'
else
    echo 'File not exist'
fi

echo
# test, -o / -a
cd /bin
if test -e ./notFile -o -e ./bash
then
    echo 'At lease one file exist'
else
    echo 'File not exist'
fi