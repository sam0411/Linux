#!/bin/bash

echo
# single for -> values
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

echo
# single for string
for str in 'This is a string'
do
    echo $str
done


echo
# for array
array=(a b c d e f g)

for i in ${array[*]} 
do
	echo $i
done


echo
# endless iteration
for((; ;))
do
	echo Go
done