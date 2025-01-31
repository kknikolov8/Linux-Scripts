#!/bin/bash

# A simple script to greet a single user.

if [ $# -eq 1 ]
then
  username=$1
  echo "Hello $username!"

else
  echo "Please enter only one argument."

fi
echo "Number of arguments: $#."
