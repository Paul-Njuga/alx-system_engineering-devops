# Process & Signals :computer:

This directory covers process management & signals.

## Requirements :bookmark_tabs:

* Allowed editors: ```vi```, ```vim```, ```emacs```.
* All files should end with a new line.
* All your scripts must be executable.
* All your scripts will be tested on Ubuntu 20.04 LTS.
* The first line of all your files should be exactly ```#!/bin/env bash```.
* Your Bash script must pass ```Shellcheck``` (version ```0.7.0```) without any error.
* A ```README.md``` file, at the root of the folder of the project, describing what each script is doing.
* The second line of all your Bash scripts should be a comment explaining what is the script doing.

## Table of contents

Files | Description
----- | -----------
[0-what-is-my-pid](./0-what-is-my-pid) | Bash script that displays its own PID
[1-list_your_processes](./1-list_your_processes) | Bash script that displays a list of currently running processes
[2-show_your_bash_pid](./2-show_your_bash_pid) | Bash script that displays lines containing the ```bash``` word, allowing to easily get the PID of the bash process
[3-show_your_bash_pid_made_easy](./3-show_your_bash_pid_made_easy) | Bash script that displays the PID, along with the process name, of processes whose name contain the word ```bash```
[4-to_infinity_and_beyond](./4-to_infinity_and_beyond) | Bash script that displays ```To infinity and beyond``` indefinitely
[5-dont_stop_me_now](./5-dont_stop_me_now) | Bash script that stops ```4-to_infinity_and_beyond``` process
[6-stop_me_if_you_can](./6-stop_me_if_you_can) | Bash script that stops ```4-to_infinity_and_beyond``` process
[7-highlander](./7-highlander) | Bash script that displays ```To infinity and beyond``` indefinitely, With a ```sleep 2``` in between each iteration, ```I am invincible!!!``` when receiving a ```SIGTERM``` signal
[8-beheaded_process](./8-beheaded_process) | Bash script that kills the process ```7-highlander```
[100-process_and_pid_file](./100-process_and_pid_file) | Bash script that: Creates the file ```/var/run/myscript.pid``` containing its PID, Displays ```To infinity and beyond``` indefinitely, Displays ```I hate the kill command``` when receiving a SIGTERM signal, Displays ```Y U no love me?!``` when receiving a SIGINT signal, Deletes the file ```/var/run/myscript.pid``` and terminates itself when receiving a SIGQUIT or SIGTERM signal
[101-manage_my_process](./101-manage_my_process) | Bash init script that manages the daemon ```manage_my_process```
[manage_my_process](./manage_my_process) | Daemon script for task 101
[102-zombie.c](./102-zombie.c) | C program that creates 5 zombie processes

## Bugs :loudspeaker:

No known bugs.

## Authors :black_nib:

**Paul Njuga** [Github](https://github.com/Paul-Njuga)
