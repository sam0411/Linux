# Linux Commands

## Index
[__chmod__](#chmod) change access permission of file system object  
[__touch__](#touch) update the timestamps on existing files and directories as well as creating new, empty files 


[__echo__](#echo) print to terminal / file   
[__printf__](#printf) Produce precisely-formatted output from numerical or textual arguments   

[__let__](#let) perform arithmetic operation. Not need $ for variables    
[__expr__](#expr) expression evaluation & and outputs the corresponding value   
[__sed__](#sed) stream editor for filtering and transforming text    
[__grep__](#grep)  search the named input for lines containing a match to the given PATTERN  

   
[__bc__](#bc) a language that supports arbitrary-precision numbers, meaning that it delivers accurate results regardless of how large (or very small) the numbers are   
[__date__](#date) date command is used to print out, or change the value of, the system's time and date information    
[__ps__](#ps) report a snapshot of the status of currently running processes    

[__ls__](#ls) list file & directories under current folder    
[__stat__](#stat) displays the detailed status of a particular file or a file system    
[__file__](#file) detect file type. There are three sets of tests, performed in this order: filesystem tests, magic tests, and language tests    


[__cd__](#cd) change working directory    
[__pwd__](#pwd) print working directory    
[__mkdir__](#mkdir) create directories    
[__cp__](#cp) make copies of files and directories    
[__mv__](#mv) rename / move files / directories    
[__rm__](#rm) remove files / directories    


[__ping__](#ping) ping is a simple way to send network data to, and receive network data from, another computer on a network   


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
	* > `r` : reversed order (desc)
	* > `R` : list file information in sub-folder respectively

```Shell

	# list all file whose name starts with 's' under current folder
	ls -ltr s*

	# list all files under current folder wih=th detail information, order by created / updated time
	list -alt

	# list detail information of file under current folder & files under sub-folders
	ls -lR 
```	


## stat
* Options
	* > `f` : return the status of an entire file system

```Shell

	## display file status
	stat commands.md

	## display file status & tatus of an entire file system
	stat -f commands.md

```	


## file
* Options
	* > `b` : not display file name
	* > `i` : display file minetype

```Shell

	## display file information
	file install.log

	## display file mimtype
	file -i install.log 

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


## mkdir
* Options
	* > `p` : create parent directories as necessary. When this option is specified, no error is reported if a directory already exists    
	* > `m` : set a file mode (permissions, etc.) for the created directories

```Shell

	# create directory with parent directories
	mkdir -p BBB/Test

	# create directory & grant rwx to all users
	mkdir -m a=rwx mydir  

```

## cp
* Options
	* > `a` : dpr
	* > `d` : copy symbolic links themselves, rather than the files they refer to, and preserve hard links between source files in the copies
	* > `p` : never follow symbolic links in source; copy symlinks as symlinks
	* > `r` : copy directories recursively
	* > `l` : create hard links to files instead of copying them
	* > `i` : prompt & confirm before overwrite 
	* > `f` : no prompt & confirm before overwrite 

```Shell

	# simple copy
	cp file1 file2

	# copy folder & subfolders
	cp –r test/ newtest  

```


## mv
* Options
	* > `i` : prompt & confirm before overwrite 
	* > `f` : no prompt & confirm before overwrite 

```Shell

	# rename file aaa into bbb
	mv aaa bbb

	# move info directory into logs directory, if logs directory does not exist, rename info directory into logs 
	mv info/ logs

```


## rm
* Options
	* > `i` : prompt & confirm before overwrite 
	* > `f` : no prompt & confirm before overwrite 
	* > `r` : recursively remove subfolders

```Shell

	# remove file
	rm aaa

	# remove folder & subfolders
	mv -r folder

```


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


## ping
* Options
	* > `c` : stop after sending count ECHO_REQUEST packets
	* > `i` : wait interval seconds between sending each packet
	* > `s` : specifies the number of data bytes to be sent. The default is 56
	* > `t` : set the IP TTL (time-to-live)

```Shell

	# simple ping
	ping www.w3cschool.cc

	# send echo request package 2 times
	ping -c 2 www.w3cschool.cc

	# send 1024 bytes echo request package every 3 seconds with ttl = 255
	ping -i 3 -s 1024 -t 255 g.cn

```


## bc
* Operator
	* > `+` : add
	* > `-` : minus
	* > `*` : multiplate
	* > `/` : divide
	* > `%` : remainder
	* > `^` : exponent   
* Function
	* > `scale(expression)` : get the number of digits after the decimal point in the expression    
	* > `sqrt(expression)` : the square root of the expression. If the expression is negative, a runtime error is generated    
	* > `length(expression)` : the number of significant digits in the expression    
* Variable
	* > `scale` : define how some operations use digits after the decimal point. The default value of scale is 0
	* > `ibase` : define the conversion base for input numbers
	* > `obase` : define the conversion base for output numbers

```Shell

	# bc
	echo "15+5" | bc

	# bc + scale
	echo 'scale=2; (2.777 - 1.4744)/1' | bc

	# bc convert binary into decimal
	echo "ibase=2; 111" | bc

	# bc convert decimal into binary
	abc=192 
	echo "obase=2;$abc" | bc

	# bc exponent
	echo "10^10" | bc 

	# bc square root
	echo "sqrt(100)" | bc

```


## date
* Options
	* > `u` : print or set Coordinated Universal Time
	* > `utc` : print or set Coordinated Universal Time
	* > `universal` : print or set Coordinated Universal Time
	* > `R` : Output date and time in RFC 2822 format. Example: Sat, 21 Mar 2020 22:11:09 +0800

```Shell

	# date utc
	date -u
	date -utc
	date -universal

	# date in RFC 2822 format
	date -R

```