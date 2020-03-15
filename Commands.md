# Linux Commands

## Index
[__chmod__](#chmod) Change access permission of file system object  

[__echo__](#echo) Print to terminal / file   
[__printf__](#printf) Produce precisely-formatted output from numerical or textual arguments   

[__let__](#let) Perform arithmetic operation. Not need $ for variables
[__expr__](#expr) Expression evaluation & and outputs the corresponding value   
[__sed__](#sed) Stream editor for filtering and transforming text    
[__grep__](#grep)  Search the named input for lines containing a match to the given PATTERN 

[__touch__](#touch) update the timestamps on existing files and directories as well as creating new, empty files

[__ls__](#ls) List file & directories under current folder

[__cd__](#cd) Change working directory
[__pwd__](#pwd) Print working directory

## chmod
* permission
	* > `r` : read (4)   
	* > `w` : write (2)  
	* > `x` : execute (1)  
* member & group
	* > `u` : owner (a) 
	* > `g` : user from same group with owner (b)
	* > `o` : o=users from other groups with owner (c) 
	* > `a` : all
* operate permission
	* > `+` : add permission
	* > `-` : revoke permission
	* > `=` : Set a permission and remove others 
* `R` : recursive operation for sub-folders    

```Shell
	#Add execute permission
	chmod +x ./test.sh 

	#grant read permission to everyone
	chmod ugo+r README.md
	chmod a+r README.md

	#grant write permission to users from same group with owner, revoke write persion from users from  other group with owner
	chmod ug+w,o-w README.md Linux_Commands.md

	#grant execute permission to owner
	chmod u+x README.md

	#grant read permission to everyone for current folder + sub-folders
	chmod -R a+r *

	#grant read & write & execute permission to everyone
	#a=owner, b=user from same group with owner, c=users from other groups with owner
	#4=read, 2=write, 1=execute
	chmod 777 README.md
```

## echo
* Options
	* > `e` : enable the interpretation of the escape characters (\r \n).
	* > `E` : disable the interpretation of the escape characters (\r \n). This is the default. 
	* > `n` : supress trailing newline  	

```Shell
	#print string
	echo 'Hello Word!' / Hello Word

	#print escape character
	echo "\"It is a test\""

	#print variable
	name='Hello World!'
	echo $name , ${name}

	#print with newline \n escape character support
	echo -e "Hello World! \n Alex Lou"

	#print with newline \n escape character support, with ignore newline \c escape character support
	echo -e "OK! \c"
	echo "It is a test"

	#print to file
	echo "Hello World!" > myfile.bak

	#print command executation result
	echo `date`
```

## expr
* Options
	* > `length` : length of string 
	* > `substr` : substring, from start points then substring x characters 
	* > `index` : index of the first character	

```Shell
	#length of string
	expr length "this is a test"

	#substring
	expr substr "this is a test" 3 5

	#index character
	expr index "this is a test" a

	#integer arithmetic
	expr 10 + 10
	expr 1000 - 900
	expr 30 \* 3
	expr 30 / 3 / 2
	expr 14 % 9

```

## sed


```Shell

	#filter out \r (replace window new line \r\n to \n)
	sed -i 's/\r//g' file

```

## printf
* conversion character
	* > `%*s` : string   
	* > `%*d` : integer   
	* > `%*i` : integer   
	* > `%*.*f` : float, with decimal  
	* > `-` : test alignment = left, otherwise right  
	* > `*` : width or percision  

* Interpreted Escaped Character Sequences
	* > `\"` : prints a double-quote (")
	* > `\\` : prints a backslash (\)
	* > `\a` : issues an alert (plays a bell)
	* > `\b` : prints a backspace
	* > `\c` : instructs printf to produce no further output
	* > `\e` : prints an escape character (ASCII code 27)
	* > `\f` : prints a form feed
	* > `\n` : prints a newline
	* > `\r` : prints a carriage return
	* > `\t` : prints a horizontal tab
	* > `\v` : prints a vertical tab   

```Shell

	#print with line feed
	printf "Hello, Shell\n"

	#format printing with %s %f
	printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
	printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
	printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
	printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 
```

## grep
* Options
	* > `i` : ignore case
	* > `v` : invert the sense of matching, to select non-matching lines
	* > `r` : read all files under directory, recursively
	* > `c` : suppress normal output; instead, print a count of matching lines for each input file 
	* > `E` : search by Regular Expression

```Shell

	# search *.sh files under current folder which contains 'test' string, and print line
	grep test *.sh

	# recursively search all files under /etc/ which contains 'update' string and print line
	grep -r update /etc/

	# recursively search all files under /etc/ which NOT contains 'update' string and print line
	grep -r -v update /etc/
```


## let

```Shell

	# basic arithmetic operation
	let a=5+1
	let b=5-9
	let c=7*8
	let d=9/2
	let e=5%4

	echo $a $b $c $d

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
```


## ls

* Options
	* > `a` : include hidden(.) entries
	* > `l` : with permission & detail information
	* > `t` : order by created / updated time
	* > `R` : list file information in sub-folder respectively

```Shell

	# list all file whose name starts with 's' under current folder
	ls -ltr s*

	# list all files under current folder wih=th detail information, order by created / updated time
	list -alt

	# list detail information of file under current folder & files under sub-folders
	ls -lR 
```	

## cd
* Directory shortcut
	* > `.` : current working directory
	* > `..` : parent directory of current working directory
	* > `~` : home directory
	* > `/` : root directory
	* > `-` : last working directory


## pwd
* Timstamp Type
	* > `ctime` : change time, The last time the file's metadata, called the Status, was changed. Status information includes a file's permissions and its timestamps. Every time anything happens to a file, at least one element of its status changes, and its ctime is set to the current system time.
	* > `atime` : access time, The last time the file was read.
	* > `mtime` : modification time, The last time the contents of the file were modified.

* Options
	* > `L` : print working directory. Default
	* > `P` : print physical directory, with any symbolic links


## touch
* Options
	* > `a` : set access time to current time
	* > `c` : if file exists, do not create new empty file, while set access time to current time
	* > `m` : set modification time to current time


```Shell

	# create a empty file
	touch newfile.bak

	# set access time and modification time
	touch -am newfile.bak

```