#!/bin/bash

bash ./project_new.sh "$1" "$2"
bash ./project_add.sh "$1"
bash ./project_build.sh "$3"
cd project_"$1"
cd build
./project_"$1"
