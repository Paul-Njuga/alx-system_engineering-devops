# Shell - I/O Redirections & Filters :computer:

This directory covers input/output redirection and filters.

## Requirements :bookmark_tabs:

* Allowed editors: ```vi```, ```vim```, ```emacs```.
* All files should end with a new line.
* All your scripts must be executable.
* You are not allowed to use ```sed``` or ```awk```.
* You are not allowed to use backticks, ```&&```, ```||``` or ```;```.
* All your scripts will be tested on Ubuntu 20.04 LTS.
* The first line of all your files should be exactly ```#!/bin/bash```.
* All your scripts should be exactly two lines long (```$ wc -l file``` should print 2).
* A ```README.md``` file, at the root of the folder of the project, describing what each script is doing.

## Table of contents

Files | Description
----- | -----------
[0-hello_world](./0-hello_world) | Script that prints “Hello, World”, followed by a new line to the standard output
[1-confused_smiley](./1-confused_smiley) | Script that displays a confused smiley ```"(Ôo)'```
[2-hellofile](./2-hellofile) | Script that displays the content of the ```/etc/passwd``` file
[3-twofiles](./3-twofiles) | Script that displays the content of ```/etc/passwd``` and ```/etc/hosts```
[4-lastlines](./4-lastlines) | Script that displays the last 10 lines of ```/etc/passwd```
[5-firstlines](./5-firstlines) | Script that displays the first 10 lines of ```/etc/passwd```
[6-third_line](./6-third_line) | Script that displays the third line of the file ```iacta```
[7-file](./7-file) | Script that creates a file named exactly ```\*\\'"Best School"\'\\*$\?\*\*\*\*\*:)``` containing the text ```Best School``` ending by a new line
[8-cwd_state](./8-cwd_state) | Script that writes into the file ```ls_cwd_content``` the result of the command ```ls -la```
[9-duplicate_last_line](./9-duplicate_last_line) | Script that duplicates the last line of the file ```iacta```
[10-no_more_js](./10-no_more_js) | Script that deletes all the regular files (not the directories) with a ```.js``` extension that are present in the current directory and all its subfolders
[11-directories](./11-directories) | Script that counts the number of directories and sub-directories in the current directory
[12-newest_files](./12-newest_files) | Script that displays the 10 newest files in the current directory
[13-unique](./13-unique) | Script that takes a list of words as input and prints only words that appear exactly once
[14-findthatword](./14-findthatword) | Script that displays lines containing the pattern “root” from the file ```/etc/passwd```
[15-countthatword](./15-countthatword) | Script that displays the number of lines that contain the pattern “bin” in the file ```/etc/passwd```
[16-whatsnext](./16-whatsnext) | Script that displays lines containing the pattern “root” and 3 lines after them in the file ```/etc/passwd```
[17-hidethisword](./17-hidethisword) | Script that displays all the lines in the file ```/etc/passwd``` that do not contain the pattern “bin”
[18-letteronly](./18-letteronly) | Script that displays all lines of the file ```/etc/ssh/sshd_config``` starting with a letter
[19-AZ](./19-AZ) | Script that replaces all characters ```A``` and ```c``` from input to ```Z``` and ```e``` respectively
[20-hiago](./20-hiago) | Script that removes all letters ```c``` and ```C``` from input
[21-reverse](./21-reverse) | Script that reverse its input
[22-users_and_homes](./22-users_and_homes) | Script that displays all users and their home directories, sorted by users
[100-empty_casks](./100-empty_casks) | Script that  finds all empty files and directories in the current directory and all sub-directories
[101-gifs](./101-gifs) | Script that lists all the files with a ```.gif``` extension in the current directory and all its sub-directories
[102-acrostic](./102-acrostic) | Script that decodes acrostics that use the first letter of each line
[103-the_biggest_fan](./103-the_biggest_fan) | Script that parses web servers logs in TSV format as input and displays the 11 hosts or IP addresses which did the most requests

## Bugs :loudspeaker:

No known bugs.

## Authors :black_nib:

**Paul Njuga** [Github](https://github.com/Paul-Njuga)
