#!/bin/bash

echo
#print current process id
echo "print current process id：$$";

echo
#print last process id running on backend
echo "print last process id running on backend：$!";

echo
#print file name, parameters
echo "executed file name：$0";
echo "the first parameter：$1";
echo "the second parameter：$2";
echo "the third parameter：$3";

echo
#print number of parameters
echo "number of parameter：$#";

echo
#print parameters as one string
echo "print parameters as one string：$*";

echo
#print $*, it is a single string
for i in "$*"; do
	echo $i
done

echo
#print $@, it is a string array
for i in "$@"; do
	echo $i
done