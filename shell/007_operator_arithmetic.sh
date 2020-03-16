#!/bin/bash

a=10
b=20

echo
# +
val=`expr $a + $b`
echo "a + b : $val"

echo
# -
val=`expr $a - $b`
echo "a - b : $val"

echo
# *
val=`expr $a \* $b`
echo "a * b : $val"

echo
# /
val=`expr $b / $a`
echo "b / a : $val"

echo
# %
val=`expr $b % $a`
echo "b % a : $val"

echo
# ==
if [ $a == $b ]
then
   echo "a == b"
else
	echo "a != b"
fi

echo
# !=
if [ $a != $b ]
then
   echo "a != b"
else
	echo "a == b"
fi

echo
# operator with []
result=$[a+b]
echo '$[a+b]' " = " $result