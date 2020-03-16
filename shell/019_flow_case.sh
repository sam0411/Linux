#!/bin/bash

echo
# input with case & default
echo 'Please input integer between 1~4:'
echo -n 'Input:'
read aNum
case $aNum in
    1)  echo 'Your Input is 1'
    ;;
    2)  echo 'Your Input is 2'
    ;;
    3)  echo 'Your Input is 3'
    ;;
    4)  echo 'Your Input is 4'
    ;;
    *)  echo 'Your Input is Invalid'
    ;;
esac