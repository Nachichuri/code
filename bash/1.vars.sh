#!/bin/bash

message="Hello world!"

#Here starts the code fam

echo "$message"

exit $? #This exits independently of the error

# Usually, when you create a script from scratch or with "$ touch <file>", you will have no permissions to run it. You have to chmod +x <filename> to make it executable.
