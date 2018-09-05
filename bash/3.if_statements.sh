#!/usr/bin/env bash

### Using ""#!/usr/bin/env bash" is better for compatibility issues.
### You can always use #!/bin/bash

## Arguments reference:
# $# --> number of arguments the scripts was run with
# $0 --> the filename of the script
# $1...$n --> script arguments

# Space reserved for variable creation
name=$1 #This sets $name to the first argument fed to the program
greeting1="Hi Dave!"
greeting2="Hey Carlos!"
greeting3="Hi Dave! I'm the old syntax"
greeting4="Hi there Carlos, I'm the old syntax"
error1="Your name is not on the list. Sorry, try again"
error2="The old syntax kinda sucks, you know..."

#If statements

if [[ "$name" == "Dave" ]]; then #if [[ test ]] is true; then do what follows
  echo $greeting1
elif [[ "$name" == "Carlos" ]]; then
  echo $greeting2
else
  echo $error1
fi #This will always close the if statements

#Same script BUT with old syntax:

if [ "$name" = "Dave" ]; then
  echo $greeting3
elif [ "$name" = "Carlos" ]; then
  echo $greeting4
else
  echo $error2
fi


#For portability issues, instead of using [[]] for tests, use single ones [].
# [] = Old test. More annoying, but more portable.
# [[]] = New test syntax, simpler. For modern Linux, using Bash
