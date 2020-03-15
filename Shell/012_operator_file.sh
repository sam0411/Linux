#!/bin/bash

file="/etc/bash.bashrc"

echo
# detect file read permission
if [ -r $file ]
then
   echo "Have Read Permission"
else
   echo "NOT Have Read Permission"
fi

echo
# detect file write permission
if [ -w $file ]
then
   echo "Have Write Permission"
else
   echo "Not Have Write Permission"
fi

echo
# detect file execute permission
if [ -x $file ]
then
   echo "Have Execute Permission"
else
   echo "Not Have Execute Permission"
fi

echo
# detect normal / special file
if [ -f $file ]
then
   echo "Normal File"
else
   echo "Special File"
fi

echo
# detect file / directory
if [ -d $file ]
then
   echo "Directory"
else
   echo "Not Directory"
fi

echo
# detect empty file
if [ -s $file ]
then
   echo "Not Empty File"
else
   echo "Empty File"
fi

echo
# detect file exist
if [ -e $file ]
then
   echo "Have File"
else
   echo "Not Have File"
fi