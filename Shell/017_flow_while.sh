#!/bin/bash

echo
# while
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done


echo
# while read input
echo 'Press <CTRL-D> to quit'
echo -n 'Input your name: '
while read FILM
do
    echo "Yes！$FILM is good"
done


echo
# while with break
while :
do
    echo -n "Please input integer between 1~5:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "You input is $aNum!"
        ;;
        *) echo "Invalid Input. Exist"
            break
        ;;
    esac
done


echo
# endless iteration
while :
do
	echo good
done