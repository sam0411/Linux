#!/bin/bash

your_name="runoob"

# use double quote concate string
greeting="hello, "$your_name" ! \n"
greeting_1="hello, ${your_name} ! \n"

echo -e $greeting$greeting_1 

# use single quote concate string
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2  $greeting_3