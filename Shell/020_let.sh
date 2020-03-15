#!/bin/bash

echo
# basic arithmetic operation
let a=5+1
let b=5-9
let c=7*8
let d=9/2
let e=9%4
echo $a $b $c $d $e


echo
# ++ -- =+ =-
num=99

let num++
echo ++ 99 : $num

let num--
echo -- 100 : $num

let num+=10
echo 99+=10 : $num

let num-=10
echo 109-=10 : $num