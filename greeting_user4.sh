#!/bin/bash

#Simple script for greeting users with implemented conditional logic, for-loop, exit codes and error checking
#with regular expression.

if [ $# -eq 0 ]
then
 echo "Please enter at leat one user to greet."
 exit 1

else

 for username in $@
 do
  echo  $username | grep "^[A-Za-z]*$" > /dev/null
  if [ $? -eq 1 ]
  then
   echo "ERROR: Names must only contain letters!"
   exit 2
  else
  echo "Hello, $username!"
  fi  
 done

 exit 0

fi
