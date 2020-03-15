#!/bin/bash

echo
# define array
my_array=(A B "C" D)

echo
#print array directly
echo first element of array \(print array directly\): "${my_array}" - $my_array - "$my_array" - ${my_array}


echo
#print all elements
echo all elements of array: ${my_array[*]}

for i in ${my_array[*]}; do
	echo $i
done


echo
#print all elements as array
echo all elements of array: ${my_array[@]}

for i in ${my_array[@]}; do
	echo $i
done


echo
#print array elements
echo 1 element of array: ${my_array[0]}
echo 2 element of array: ${my_array[1]}
echo 3 element of array: ${my_array[2]}
echo 4 element of array: ${my_array[3]}
echo 5 element of array: ${my_array[4]}


echo
#length of array
echo length of array: ${#my_array[*]}
echo length of array: ${#my_array[@]}
