# vi / vim

* Modes
	* > `Command Mode` : when entering vi, it is command mode
		* > `[i]` : come to Insert Model, on current cursor position
		* > `[I]` : come to Insert Model, on current cursor position + paragraph first character
		* > `[o]` : come to Insert Model, after current cursor position + insert a new line
		* > `[O]` : come to Insert Model, before current cursor position + insert a new line
		* > `[a]` : come to Insert Model, on current cursor position + next character
		* > `[A]` : come to Insert Model, on current cursor position + paragraph last character 
		* > `[x]` : remove character on current cursor	
		* > `[:]` : come to Last Line Model, must with command after :
	* > `Insert Mode` : edit model
		* > `[Esc]` : come to Command Model
	* > `Last Line Mode` : command line model
		* > `[Enter]` : come to Command Model, with command

* Operation under Last Line Mode
	* > `w` : save
	* > `q` : quit
	* > `wq` : save & quit
	* > `w!` : force save (read only case)
	* > `q!` : force quit
	* > `:w [filename]` : save to another filename
	* > `:r [filename]` : read another filename & append to current file

* Operation under Insert Model
	* > `[F12]` : switch Insert / Replace model
	* > `[Page Down]` : Move cursor to next page
	* > `[Page Up]` : Move cursor to previous page
	* > `[Home]` : Move cursor to first page
	* > `[End]` : Move cursor to last page
	* > `[Esc]` : come to Command Model

* Operation under Command Model
	* > `[Ctrl] + [f]` : Move down one page, same as [Page Down]
	* > `[Ctrl] + [b]` : Move up one page, same as [Page Up]
	* > `[Ctrl] + [d]` : Move down half page
	* > `[Ctrl] + [u]` : Move up half page
	* > `n<space>` : Move down n lines
	* > `[0]` : come to first character of current line, same as [Home]
	* > `[$]` : come to last character of current line, same as [End]
	* > `[H]` : Move to first line first character in screen
	* > `[M]` : Move to middle line first character in screen
	* > `[L]` : Move to last line first character in screen
	* > `[G]` : Move to last line
	* > `nG` : Move to n line of file
	* > `gg` : Move to first line of file, same as 1G
	* > `n<Enter>` : Move down n lines
	* > `yy` : Copy current line
	* > `p` : Paste copied content to next line
	* > `P` : Paste copied content to previous line


* ![switching among models](./refer/vi_models.png)

* ![keyboard mapping](./refer/vi_keyboard.gif)