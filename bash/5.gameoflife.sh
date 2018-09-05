#!/bin/bash

# This is a script called "A life simulator"
# Call with ./$SCRIPTNAME <name> <number>
# ^ remember it's useful to include documentation on your code!

# Review of 1-5 files:
# 1: Variable declaration and calling
# 2: Arguments
# 3: If statements, testing and control flow.
# 4: Variable testing and comparisons
# 5: More control flow, iteration, functions, read, exit codes.

# Variable declarations:
num_required_args=2
num_args=$# # Remember that $# will always represent the number of arguments given to the script

# Do we have at least two arguments?
if [[ $num_args -lt $num_required_args ]]; then
  echo "Not enough arguments. Call this script with:
  $ ${0} <name> <number>" #Remember $0 is the name of the script
  exit 1 #Exits with Code Error 1 (Generic error)
fi

# Variebles to be used
name=$1 # First argument the user gave to the scripts
number=$2 # The second argument

echo "Your arguments were: ${1} and ${2}."

# For loops, iteration, string interpolation
echo "You ran this program with ${num_args} arguments. Here they are:"
for arg in "$@"; do #by saying "for arg" you are declaring a new variable. $@ --> all of the arguments
  echo "$arg" # Here you are calling the $arg variable you just created, it iterates until there are no more $@ left
done

# There are two ways to declare a function:
spaced() {
  # Parameters are not named, they are positional. This means that the arguments restart at $1, and they have NOTHING to do with the rest of the arguments of the script. This will only use the arguments you gave to the function when you call it.
  echo
  echo "###############"
  echo "${1}"
  echo "###############"
  echo
}

# Second way of declaring a function, usually the best because it's more readable:
function javatest() {
  # Testing and conditionals
  if [[ $number -eq 99 ]]; then
    spaced "You win! You guessed the secret number."
  elif (( $number < 10 )); then
    spaced "Wrong password! Try again:"
    # To set a variable interactively:
    echo "Hi, ${name}, you can try with a new password:"
    read password #Accepts user input and stores it as a variable.

    if [[ $password != "Java" ]]; then
      spaced "Well, of all the options you had, you didn't choose to input 'Java', so you're free to go"
    else
      spaced "Damn you, you had to input 'Java', didn't you?"
    fi
  fi
}

# Calling a function
# Defining a function doesn't actually call it. To actually use it, you have to call it like this:
javatest $number
exit 0 # Exits if there were no errors
