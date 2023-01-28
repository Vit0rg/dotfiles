# SED - Stream Editor
## Basic usage
<span style='color:#00ff55;'>
sed option command file
</span>

<span style='color:#00ff55;'>
sed 'command_1; command_2;...' path_to_file
</span>

OR

<span style='color:#00ff55;'>
sed -e 'command_1' -e 'command_2' ... path_to_file
</span>

- Run a serie of commands
----
<span style='color:#00ff55;'>
sed 'command' path_to_file > file_to_save
</span>

- Save (redirects) the output of sed into 'file_to_save', overwriting the content of 'file_to_save'

<span style='color:#00ff55;'>
sed -i 'command'
</span>

- Edit file in-place, changing the original file

<span style='color:#00ff55;'>
sed -i.bak 'command' path_to_file
</span>

- Edit file in-place, and save the old content as 'path_to_file'.bak (backup)

> -i ~> Option to edit file in-place

-------------------------------------------------------------
## Print  
   <span style='color:#00ff55;'>
  sed 'p' file
 </span>
 
- Print (twice) all lines of file
> p ~> command to print lines

<span style='color:#00ff55;'>
sed -n 'p' file
</span>

- Print (only once) all the matching lines (similar to the cat command)
> -n ~> option to suppress automatic print of pattern space

<span style='color:#00ff55;'>
sed '=' path_to_file
</span>

- Print all lines, prepended with line number
> = ~> command to print line number(s)

<span style='color:#00ff55;'>
sed -n '3,5 p' path_to_file
</span>

- Print all lines between 3 and 5

<span style='color:#00ff55;'>
sed -n '11p' path_to_file
</span>

- Print the 11th line

<span style='color:#00ff55;'>
sed -n '32,$' path_to_file
</span>

- Print the lines from 32 to EOF

<span style='color:#00ff55;'>
sed -n '5,$ !p' path_to_file
</span>

- Print all the lines before 5

<span style='color:#00ff55;'>
sed -n '1~10 p' path_to_file
</span>

- Print every 1st line(1, 11, 21, 31, ...), skipping 10

> The pair _'start_line,end_line'_ before the command, specifies a _range_
-------------------------------------------------------------
## Match
<span style='color:#00ff55;'>
sed -n '/pattern/p' path_to_file
</span>

- Print all the occurrences of 'pattern'

> /pattern/ ~> Defines a pattern to match

<span style='color:#00ff55;'>
sed -n '/pattern/, +10p' path_to_file
</span>

- Print the lines containing 'pattern', and the next 10 lines after the match
-------------------------------------------------------------
## Substitute

<span style='color:#00ff55;'>
sed 's/old/new/3' path_to_file
</span>

- Substitute the 3rd occurrence of 'old' with 'new' 

<span style='color:#00ff55;'>
sed 's/old/new/3g' path_to_file
</span>

- Substitute the 3rd and next occurrences of 'old' with 'new'

<span style='color:#00ff55;'>
sed 's/old/new/g' path_to_file
</span>

- Substitute all the occurrences of 'old' with 'new' 

> g ~> global flag, apply for every match

<span style='color:#00ff55;'>
sed 's/old/new/ig' path_to_file
</span>

- Substitute all the occurrences of 'old' and 'Old' with 'new' 

> /i ~> case insensitive flag, apply command for upper and lower case
-------------------------------------------------------------
## Delete

<span style='color:#00ff55;'>
sed '2,5 d' path_to_file
</span>

- Deletes the lines between 2 and 5

> d ~> delete option

<span style='color:#00ff55;'>
sed '/pattern/ d' path_to_file
</span>

- Deletes all lines that contains 'pattern'

<span style='color:#00ff55;'>
sed '/^$/ d' path_to_file
</span>

- Deletes all blank lines

<span style='color:#00ff55;'>
sed '/^#/ d' path_to_file
</span>

- Deletes all comment lines (in bash, for example)
-------------------------------------------------------------
## Prepend and Append

<span style='color:#00ff55;'>
sed '/pattern/ i "text to be added" ' path_to_file
</span>

- Insert (prepend) "text to be added" before 'pattern'

> 'i' ~> command to prepend

<span style='color:#00ff55;'>
sed '/pattern/ a "text to be added" ' path_to_file
</span>

- Insert (append) "text to be added" after 'pattern'

> 'a' ~> command to append
-------------------------------------------------------------