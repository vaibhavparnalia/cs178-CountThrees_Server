# Makefile for Server Count Threes

# define variables
# some explicit choices for building
cc=gcc
cflags=-c
#target
executable=ServerCountThrees

#required sources, objects, and datafile(s) for testing
sources=ServerCountThrees.c readInt32BitLE.c
objects=ServerCountThrees.o readInt32BitLE.o
datafile=threesData.bin

# make convention to have default target be all
all: $(executable)

# default build for our executable
$(executable): $(objects)

# no need to define .o recipes. make assumes .o file is based on compilation of .c

# test (and implicit build if needed)  our executable
#  Phony in case a file named test is ever put in directory, this is still invoked
.PHONY: test
test: $(executable) $(datafile)
	./$(executable)
	@echo #print a blank newline, slightly easier to read

#clean directory, using force remove to suppress no such file errors
.PHONY: clean
clean: 
	rm -f $(executable) $(objects) 
