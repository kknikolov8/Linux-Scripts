#!/bin/bash

#A simple script using nested conditional logic for checking if argument matches the present working directory.

current_dir=$PWD

if [ $# -eq  1 ]
then

  if [ $1 == $current_dir ]
  then
   echo "yes"
 
 else
  echo "no"
 fi

else
 echo "The script accepts only one argument. You passed $#"

fi
