#!/bin/bash
if [ -z "$1" ]; then
        echo 'Help: Shows the explanation of commands
New: Creates new directories and Makefile for the project
Add: Adds appropriate header and C files
Build: Builds the project using Makefile
Run: Runs the project'
elif [ "$1" == "help"  ]; then
        echo 'project.sh help [command]
Displays help for using the program. Without a specific command, it only prints a list of all possible commands and their brief descriptions. If you specify a specific command (help, new, add, build, or run) then it displays more detailed help for that command (all possible additional command parameters and their use).'
elif [ "$1" == "new"  ]; then
        echo 'Creates a new project with the given name in the current location. Initializes the following project structure:
project_<project_name>/
├─src/
│ └─main.c
├─include/
├─build/
├─tests/
└─Makefile
In the case of a given path, the project is created on the specified path. The basic "hello world" program is added to the main.c file and appropriate Makefile to build the project is generated.'
elif [ "$1" == "add"  ]; then
        echo 'project.sh add <name>
Adds <name>.h to include/ and <name>.c to src/. It also updates the Makefile if necessary.
The <name>.h is initialized with the following code:
#ifndef <name>_H_  
#define <name>_H_  
// Class declaration goes here
#endif // <name>_H_
The <name>.c is initialized with the following code:
#include "<name>.h"'
elif [ "$1" == "build"  ]; then
        echo 'project.sh build [-dr]
Builds the program inside the project. By default, the program is build in debug mode, but we can modify that with appropriate flags (-b - debug mode, -r - release mode).'
elif [ "$1" == "run"  ]; then
        echo 'project.sh run [parameters]
Runs the program. Forwards any parameters to the program.'
else
        echo "No such command found"
fi
