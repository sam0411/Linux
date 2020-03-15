# Linux File 

* ![File Information](./refer/linux_file_info.png)

* file type
	* > `d` : directory
	* > `-` : file
	* > `l` : symbolic link
	* > `b` : 
	* > `c` : 

* permission
	* > `r` : read (4)   
	* > `w` : write (2)  
	* > `x` : execute (1)  

* member & group
	* > `u` : owner (a) 
	* > `g` : user from same group with owner (b)
	* > `o` : o=users from other groups with owner (c) 
	* > `a` : all

* Timstamp Type
	* > `ctime` : change time, The last time the file's metadata, called the Status, was changed. Status information includes a file's permissions and its timestamps. Every time anything happens to a file, at least one element of its status changes, and its ctime is set to the current system time.
	* > `atime` : access time, The last time the file was read.
	* > `mtime` : modification time, The last time the contents of the file were modified.