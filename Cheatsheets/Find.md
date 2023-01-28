# Find

<span style='background-color:#020202;color:#00ff80;'>
    find directory_name -name file_to_search
</span>

- Returns to_search in the directory_name (and children dirs)

- If the directory_name is an absolute path (/home/username/directory_name), find returns absolute path

- If the directory_name is a relative path(.), find returns relative path

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -name "* *"
</span>
 
- Returns all files or directories with a space in the name in the current directory (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -name "*.png"
</span>
- Returns all png files in the current directory (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -name "file?.png"
</span> 
- Returns all png files with at least 1 char before ".png" in the current directory (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -name "file[2f3].png"
</span> 
- Returns all png files with exactly 2, f or 3 before ".png" in the current directory (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -name "file[1-9].png"
</span> 
- Returns all png files with a char from 1 to 9 before ".png" in the current directory (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -iname "to_search"
</span> 
- Returns to_search, doing a case-insensitive search in the directory_name (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -iname "to_search" -type f
</span>
- Returns to_search FILES, doing a case-insensitive search in the directory_name (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find . -iname "to_search" -type d
</span> 
- Returns to_search DIRECTORIES, doing a case-insensitive search in the directory_name (and children dirs)

===================================
<span style='background-color:#020202;color:#00ff80;'>
    find .  -maxdepth 1 -iname "to_search" -type f
</span> 
- Returns to_search FILES, doing a case-insensitive search, only in the directory_name

- -maxdepth defines the maximum depth to search

- -mindepth defines the minimum depth to search (search inside sub-dirs)

===================================