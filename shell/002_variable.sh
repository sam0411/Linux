#!/bin/bash

name="Alex Lou"
echo $name

name="Alex Lou 1234"
echo ${name}

for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill} Script"
done


myUrl="http://www.google.com"
readonly myUrl
#myUrl="http://www.runoob.com"


toUrl="http://www.runoob.com"
unset toUrl
echo [ $toUrl , unset variable]


your_name='runoob'
str="Hello, I know you are \"${your_name}\"! \n\n\n sss"
echo -e $str