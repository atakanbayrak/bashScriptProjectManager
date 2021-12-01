#!/bin/bash
if [ "$1" == "help" ]; then
        shift
        bash ./project_help.sh "$1"
elif [ "$1" == "new"  ]; then
        shift
        bash ./project_new.sh "$1" "$2"
elif [ "$1" == "add"  ]; then
        shift
        bash ./project_add.sh
elif [ "$1" == "build"  ]; then
        shift
        bash ./project_build.sh "$1"
elif [ "$1" == "run"  ]; then
        shift
        bash ./project_run.sh "$1" "$2" "$3"
else
        echo "No such command found"
fi
