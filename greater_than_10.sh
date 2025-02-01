#!/bin/bash

#Script that takes any number of arguments from the user, and print only those
#arguments which are numbers greater than 10.

if [ $# -eq 0 ]
then

 echo "ERROR: Please enter at least one argument!"
 exit 1
 
else

 for number in $@
 do
  echo $number | grep "^[0-9]*$" > /dev/null
  if [ $? -eq 0 ]
  then
   if [ $number -gt 10 ]
   then
    echo  "$number"
   fi
  fi

 done
 exit 0

fi
