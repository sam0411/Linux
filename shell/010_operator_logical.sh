#!/bin/bash

a=10
b=20

echo
# &&
if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "true"
else
   echo "false"
fi

echo
# ||
if [[ $a -lt 100 || $b -gt 100 ]]
then
   echo "true"
else
   echo "false"
fi