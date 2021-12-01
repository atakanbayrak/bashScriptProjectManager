#!/bin/bash


fstN=project_;
sndN=$1;
trdN=$fstN$sndN;

mkdir $trdN
cd $trdN
mkdir src/
mkdir include/
mkdir build/
mkdir tests/
touch Makefile


echo '# C++ compiler
CXX= gcc
# additional flags provided to the compiler
CXXFLAGS= -Wall -Iinclude
# target name - from which we compile the program
TARGET= project_hmwrk

# automatic search of source files (in src and current folder)
SRCS := $(wildcard src/*.c *.c)
OBJS := $(SRCS:src/%.c=build/%.o)

# print out the information
$(info Compiler: $(CXX))
$(info Flags: $(CXXFLAGS))
$(info Target: $(TARGET))
$(info Source files: $(SRCS))
$(info Object files: $(OBJS))
$(info )

# target that compiles entire project
all: build/$(TARGET)

# target that compiles a program in debug mode
debug: CXXFLAGS:= -g -O0 $(CXXFLAGS)
debug: all

# target that compiles a program in release mode
release: CXXFLAGS:= -O3 $(CXXFLAGS)
release: all

# target to clean compiled files
clean:
	rm -rf build/*

# target that compiles a source code into object module
build/%.o: src/%.c
	$(CXX) $(CXXFLAGS) -c -o $@ $^ 

# target that links the object modules into a program
build/$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ 
 ' > Makefile


cd src/
echo '#include <stdio.h>
	 int main(){

	 printf("Hello World!");

	 }' > main.c
