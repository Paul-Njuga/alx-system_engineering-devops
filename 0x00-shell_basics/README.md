# Shell - Basics :computer:

This directory is an intro to Shell.

## Requirements :bookmark_tabs:

* Allowed editors: ```vi```, ```vim```, ```emacs```.
* All files should end with a new line.
* You are not allowed to use backticks, ```&&```, ```||``` or ```;```.
* All your scripts will be tested on Ubuntu 20.04 LTS.
* The first line of all your files should be exactly ```#!/bin/bash```.
* All your scripts should be exactly two lines long (```$ wc -l file``` should print 2).
* A ```README.md``` file, at the root of the repo, containing a description of the repository.
* A ```README.md``` file, at the root of the folder of the project, describing what each script is doing.
* All your scripts must be executable. To make your file executable, use the ```chmod``` command: ```chmod u+x file```. Later, we’ll learn more about how to utilize this command.

## Table of contents

Files | Description
----- | -----------
[0-current_working_directory](./0-current_working_directory) | Script that prints the absolute path name of the current working directory
[1-listit](./1-listit) | Script that displays the contents list of your current directory
[2-bring_me_home](./2-bring_me_home) | Script that changes the working directory to the user’s home directory
[3-listfiles](./3-listfiles) | Script that displays current directory contents in a long format
[4-listmorefiles](./4-listmorefiles) | Script that displays current directory contents, including hidden files (starting with ```.```)
[5-listfilesdigitonly](./5-listfilesdigitonly) | Script that displays current directory contents with long format, with user and group IDs displayed numerically, and hidden files (starting with .)
[6-firstdirectory](./6-firstdirectory) | Script that creates a directory named ```my_first_directory``` in the ```/tmp/``` directory
[7-movethatfile](./7-movethatfile) | Script that moves the file ```betty``` from ```/tmp/``` to ```/tmp/my_first_directory```
[8-firstdelete](./8-firstdelete) | Script that deletes file ```betty```
[9-firstdirdeletion](./9-firstdirdeletion) | Script that deletes the directory ```my_first_directory``` that is in the ```/tmp``` directory
[10-back](./10-back) | Script that changes the working directory to the previous one
[11-lists](./11-lists) | Script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the ```/boot``` directory (in this order), in long format
[12-file_type](./12-file_type) | Script that prints the type of the file named ```iamafile```
[13-symbolic_link](./13-symbolic_link) | Script that creates a symbolic link to ```/bin/ls```, named ```__ls__```
[14-copy_html](./14-copy_html) | Script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory
[100-lets_move](./100-lets_move) | Script that moves all files beginning with an uppercase letter to the directory ```/tmp/u```
[101-clean_emacs](./101-clean_emacs) | Script that deletes all files in the current working directory that end with the character ```~```
[102-tree](./102-tree) | Script that creates the directories ```welcome/```, ```welcome/to/``` and ```welcome/to/school``` in the current directory
[103-commas](./103-commas) | Script that lists all the files and directories of the current directory, separated by commas (```,```)
[school.mgc](./school.mgc) | Script that creates a magic file ```school.mgc``` that can be used with the command ```file``` to detect ```School``` data files. ```School``` data files always contain the string ```SCHOOL``` at offset 0

## Bugs :loudspeaker:

No known bugs.

## Authors :black_nib:

**Paul Njuga** [Github](https://github.com/Paul-Njuga)
