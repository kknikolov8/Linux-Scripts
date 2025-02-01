#!bin/bash

#Simple script for greeting users with implemented conditional logic and exit codes.

if [ $# -eq 0 ]
then
 echo "Please enter at leat one user to greet."
 exit 1

else
 echo "Hello, $@!"
 exit 0

fi
