#!/bin/bash

## Arguments reference:
# $# --> number of arguments the scripts was run with
# $0 --> the filename of the script
# $1...$n --> script arguments
# $@ --> all of the arguments

# How to know the filename of this file?
filename=$0
echo "Welcome, you are running this script, called ${filename}."

# How many arguments was this script called with?
num_arguments=$#
echo "The amount of arguments this script was run with were ${#}."

# Calling arguments, these usually go AFTER the script, as usual.
echo "The first given argument was ${1}, the second one was ${2}, and the last one was ${3}."
echo "You will see a blank space here |${5}| if you have not fed me with a fifth argument."
