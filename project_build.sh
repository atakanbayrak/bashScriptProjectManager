#!/bin/bash

cd project_hmwrk

make debug
while getopts ":br" option; do
	case $option in
	b)
	make debug
	exit;;
	r)
	make release
	exit;;
	esac
done
