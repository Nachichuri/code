#!/bin/bash

## Arguments reference:
# $# --> number of arguments the scripts was run with
# $0 --> the filename of the script
# $1...$n --> script arguments
# $@ --> all of the arguments

# Testing and control flow with if, [ and [[, and (&&) / or (||)


# Do we have at least two arguments? Uncomment this if you want to set the required arguments to 2.
#num_required_arguments=2

#if [[ $# -lt num_required_arguments ]]; then
#  echo "Not enough arguments. Call this script with:
#  ./${0} <name> <number>"
#fi

### Strings
###########
str1="a"
str2="b"

# Equality testing (== and !=) (ASCII comparison)
if [[ "$str1" == "$str2" ]]; then
  echo "${str1} is equal to ${str2}!"
elif [[ "$str1" != "$str2" ]]; then
  echo "${str1} is not equal to ${str2}!"
fi

# Null (-n) and Zero length (-z)
notnull="this is something (not nothing), therefore it is not null"
yesnull=""

if [[ -n "$notnull" ]]; then #Sort of a guard, usually for user input. Makes sure the variable is not null.
  echo "This is not at all null..."
fi

if [[ -z "$yesnull" ]]; then #Also a guard, checks if the input is null.
  echo "Null/zero here! Please input something"
fi

### Integers
############
int1=1
int2=7

#Equal and not Equal
if [[ $int1 -eq $int2 ]]; then #With the new syntax, you can either use "-eq" or "=="
  echo "${int1} is equal to ${int2}."
elif [[ $int1 -ne $int2 ]]; then #With the new sytax, you can either use "-ne" or "!="
  echo "${int1} is not equal to ${int2}."
fi

# Greater than (-gt), less than (-lt), greater or equal than (-ge), less or equal than (-le)
if [[ $int1 -gt $int2 ]]; then
  echo "${int1} is greater than ${int2}."
elif [[ $int1 -le $int2 ]]; then
  echo "${int1} is less or equal than ${int2}."
fi

# You can use string comparison operators in the old syntax with double parenthesis
if (( $int1 == $int2 )); then
  echo "${int1} is equal to ${int2}."
fi

# (()) or new syntax:
# ==  Is Equal To
# !=  Is Not Equal To
# <   Is Less Than
# <=  Is Less Than Or Equal To
# >   Is Greater Than
# >=  Is Greater Than Or Equal To
