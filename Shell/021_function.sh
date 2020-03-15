#!/bin/bash

echo
# function
demoFun(){
    echo "The First Shell Function"
}
echo "-----Start Function-----"
demoFun
echo "-----End Function-----"


echo
# function with return -> $?
function funWithReturn(){

	aNum=10
	anotherNum=16

    return $(($aNum+$anotherNum))
}

funWithReturn
echo "function result = $?"


echo
# function with return + parameter (after 10, ${10})
funWithParam(){
    echo "first ${1} !"
    echo "scond $2 !"
    echo "tenth $10 !"
    echo "tenth ${10} !"
    echo "eleven ${11} !"
    echo "Total Parameter = $# "
    echo "All Parameter as String = $* !"
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73
