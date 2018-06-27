' include g" 
Include the file content in the content of current file.
" doc-word

' file-print g"
( fd str -- ) 
Print file.
" doc-word
                                                                        
' file-close g" 
Close file.
" doc-word

' file-open-read g" 
( str -- )
Open file with name str as read-only.
" doc-word
                                                                            
' file-open-append g" 
( str -- )
Open file with name str for reading and writing. If file does not exist create it as a regular file.
" doc-word

' file-create g" 
( str -- )
Create a regular file with name specified by the string on top of the stack and the following flags: O_RDWR, O_CREAT, O_TRUNC.
" doc-word
                                                                      
' sys-close g" 
System call to close a file. The exit code is on the top of the stack.
" doc-word

' sys-close-no g" 
Place the number of sys_close system call on the top of the stack.
" doc-word

' sys-open g" 
System call to open a file. The exit code is on the top of the stack.
" doc-word

' sys-open-no g" 
Place the number of sys_open system call on the top of the stack.
" doc-word
                                                                 
' O_RDONLY g" 
File access mode flag for opening file as read-only.
" doc-word

' O_WRONLY g" 
File access mode flag for opening file as write-only.
" doc-word

' O_RDWR g" 
File access mode flag for opening file as read/write.
" doc-word

' O_TRUNC g" 
File creation flag.
If the file already exists and is a regular file and the access mode allows writing (i.e., is O_RDWR or O_WRONLY) it will be truncated to length 0.
" doc-word

' O_CREAT g" 
File creation flag.
If file does not exist create it as a regular file.
" doc-word

' O_APPEND g" 
File creation flag.
The file is opened in append mode. Before each write operation, the file offset is positioned at the end of the file.
" doc-word

' 0x g" 
( -- hex )
Place a hexadecimal literal's decimal representation on top of the stack. If it is not a hexadecimal literal place 0.
" doc-word 

' O8x g" 
( -- oct )
Place an octal literal on top of the stack. If it is not an octal literal place 0.
" doc-word 

' read-oct-digit g" 
( -- oct )
Read an octal digit add place it on top of the stack; otherwise place -1.
" doc-word 

' read-hex-digit g" 
( -- hex )
Read a hexadecimal digit add place its decimal representation on top of the stack; otherwise place -1.
" doc-word 

' read-digit g"
( -- dec ) 
Read a decimal digit and place it on top of the stack; otherwise place -1.
" doc-word 
  
' ." g" 
Print the words up to the delimiting double-quote.
" doc-word 
                                                                                             
' g" g" 
Create a documentation of the dictionary word whose XT is on top of the stack.
Description of the word goes up to the delimiting double-quote followed by the word 'doc-word'.
" doc-word 

' TAB g" 
( -- char ) 
Place TAB ASCII code on top of the stack.
" doc-word 

' QUOTE g" 
( -- char ) 
Place double quotes ASCII code on top of the stack.
" doc-word 

' cr g" 
Start a new line.
" doc-word 

' readce g" 
( -- char ) 
Read character and place its ASCII code on top of the stack.
Place 0 for control characters except new line character \n.
" doc-word 

' .' g"
( -- char ) 
Place character ASCII code on top of the stack.
" doc-word 

' compnumber g" 
Compute number in compilation mode.
" doc-word 

' compiling g"
( -- state ) 
Place on top of the stack the current Forth state:
0 - interpretation mode
1 - compilation mode
" doc-word 

' in-range g" 
( num from to -- 1/0 )
Check if number is in given range. Place on top of the stack 1 if it is; otherwise place 0. 
" doc-word 
                                                                
' case g" 
Execute the block of code associated with the case clause. Case clause mathes the value of the topmost element of the stack.
" doc-word

' of g" 
Match the beginning of the block of code for a case clause.
" doc-word

' endof g" 
Match the end of the block of code for a case clause.
" doc-word

' endcase g" 
Match the end of case statement.
" doc-word 

