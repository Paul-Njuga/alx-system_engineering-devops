# Shell - Permissions :computer:

This directory covers shell permissions.

## Requirements :bookmark_tabs:

* Allowed editors: ```vi```, ```vim```, ```emacs```.
* All files should end with a new line.
* All your scripts must be executable.
* You are not allowed to use backticks, ```&&```, ```||``` or ```;```.
* All your scripts will be tested on Ubuntu 20.04 LTS.
* The first line of all your files should be exactly ```#!/bin/bash```.
* All your scripts should be exactly two lines long (```$ wc -l file``` should print 2).
* A ```README.md``` file, at the root of the folder of the project, describing what each script is doing.

## Table of contents

Files | Description
----- | -----------
[0-iam_betty](./0-iam_betty) | Script that switches the current user to the user ```betty```
[1-who_am_i](./1-who_am_i) | Script that prints the effective username of the current user
[2-groups](./2-groups) | Script that prints all the groups the current user is part of
[3-new_owner](./3-new_owner) | Script that changes the owner of the file ```hello``` to the user ```betty```
[4-empty](./4-empty) | Script that creates an empty file called ```hello```
[5-execute](./5-execute) | Script that adds execute permission to the owner of the file ```hello```
[6-multiple_permissions](./6-multiple_permissions) | Script that adds execute permission to the owner and the group owner, and read permission to other users, to the file ```hello```
[7-everybody](./7-everybody) | Script that adds execution permission to the owner, the group owner and the other users, to the file ```hello```
[8-James_Bond](./8-James_Bond) | Script that sets the mode of the file ```hello``` to 007
[9-John_Doe](./9-John_Doe) | Script that sets the mode of the file ```hello``` to 753
[10-mirror_permissions](./10-mirror_permissions) | Script that mirrors the mode of ```olleh``` to ```hello```
[11-directories_permissions](./11-directories_permissions) | Script that adds execute permission to all subdirectories of the current directory except for the regular files
[12-directory_permissions](./12-directory_permissions) | Script that creates a directory called ```my_dir``` with permissions 751 in the working directory
[13-change_group](./13-change_group) | Script that changes the group owner to ```school``` for the file ```hello```
[100-change_owner_and_group](./100-change_owner_and_group) | Script that changes the owner to ```vincent``` and the group owner to ```staff``` for all the files and directories in the working directory
[101-symbolic_link_permissions](./101-symbolic_link_permissions) | Script that changes the owner and the group owner of ```_hello``` to ```vincent``` and ```staff``` respectively
[102-if_only](./102-if_only) | Script that changes the owner of the file ```hello``` to ```betty``` only if it is owned by the user ```guillaume```
[103-Star_Wars](./103-Star_Wars) | Script that will play the StarWars IV episode in the terminal

## Bugs :loudspeaker:

No known bugs.

## Authors :black_nib:

**Paul Njuga** [Github](https://github.com/Paul-Njuga)
