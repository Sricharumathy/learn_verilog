## Question 1 (10 points)
### Write the keystrokes needed for the commands in vi if the editor is currently in "Command" mode.<br>
a. Delete 4 lines, starting from the current line.<br>
Ans: 4dd<br>
b. Search "cat" or "Cat" in the entire document<br>
Ans:/[Cc]at --- (Case sensitive)<br>
    /\ccat --- (Case insensitive)<br>
c. Delete 6 characters, starting from the current position<br>
Ans:6x<br>
d. Switch to "Insert" mode.<br>
Ans:i<br>
e. Undo the most recent command.<br>
Ans:u<br>

## Question 2 (10 points)
### Briefly explain what the given command would do in vi if the editor is currently in command mode. (Hint:<br>
### Go try these commands and verify what they do).<br>
a. :wq!<br>Ans: Saves the file and exits the editor, forcing the action if necessary <br>
b. :%s/cat/Cat/g <br>Ans: Replaces every occurrence of cat with Cat throughout the entire file. <br>
c. 2fa <br> Moves the cursor to the second occurrence of the character a on the current line.<br>
d. yy (then p) <br>Ans: yy copies the current line. After moving the cursor elsewhere, p pastes the copied line below the current line.<br>
e. gg <br>Ans: Moves the cursor to the beginning (first line) of the file.<br>

## Question 3 (10 points)
### Write the keystrokes needed for these commands in editor VI. Assume that you want to accomplish<br>
### each task with as few keystrokes as possible.<br>
a. Search backward<br>
Ans: ?pattern+Enter <br>
b. Cut text from the "mark" to the current position<br>
Ans: d'a <br>
c. Move to the end of the line<br>
Ans: $ <br>
d. Move forward one page<br>
Ans: Ctrl +F <br>
e. Save buffered text to currently specified file<br>
Ans: :w <br>

## Question 4 (10 points)
### Briefly explain what each of the given commands would do in editor emacs. Note that the ^ symbol in
### these commands represents the Control key.
a. :11,15s/Bangalore/Trivandrum/<br>
Ans: Replaces the first occurrence of Bangalore with Trivandrum on each line from 11 to 15.<br>
b. :11,15s/Bangalore/Trivandrum/gc<br>
Ans: Replaces all occurrences of Bangalore with Trivandrum on lines 11 to 15, asking for confirmation <br>
(c) before each replacement.<br>
c. :set nu<br>
Ans: Displays line numbers in the editor.<br>
d. :q<br>
Ans: Quits the editor. It works only if there are no unsaved changes.<br>
e. :q!<br>
Ans:Quits the editor without saving any changes.<br>

## Question 5 (10 points)
### Give brief answers for each of the following questions. For questions a and b below, write out two 
### different ways (using numerical and letter methods) to change permissions of a file "thing.txt" to the
### permissions specified.
a. User has read, execute permissions, group has read permissions, other has write and
execute permissions<br>
Ans: Numeric Method: chmod 543 thing.txt<br>
    Symbolic Method: chmod u=rx,g=r,o=wx thing.txt <br>
b. User has no permissions, group has read write execute permissions, other has write
permissions<br>
Ans: Numeric Method: chmod 072 thing.txt <br>
Symbolic method: chmod u=,g=rwx,o=w thing.txt <br>
c. What are the default permissions of a newly created text file?<br>
Ans:  Symbolic Method: rw-r--r-- <br>
Numberic Method: 644<br>
d. What are the default permissions of a newly created directory? WHY does it differ from the
permissions of a new text file? Name one command that would not produce the desired result
when a directory that is not executable is used as a parameter to the command.<br>
Ans:Symbolic Method : rwxr-xr-x <br>
Numeric Method ; 755<br>
