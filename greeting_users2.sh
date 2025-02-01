#!/bin/bash

#Simple script for greeting users with implemented conditional logic, for-loop and exit codes.

if [ $# -eq 0 ]
then
 echo "Please enter at leat one user to greet."
 exit 1

else 
 
 for username in $@
 do
  echo "Hello, $username!"
 done
 exit 0

fi
