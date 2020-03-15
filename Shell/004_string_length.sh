#!/bin/bash

name="Hello Word!"

echo name = ${name}

# length of string
echo length of name via variable = ${#name}
echo length of name via expr = `expr length "${name}"`

# substring
echo 'substring(1, 4) via variable' = "${name:1:4}"
echo 'substring(1, 4) via expr' = `expr substr "${name}" 1 4`

# index first character
echo index first position of o/d via expr = `expr index "${name}" od`