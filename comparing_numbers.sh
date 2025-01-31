#!/bin/bash

#This is a simple script for trainign conditional logic in Bash.

fruit1="Apples"
fruit2="Oranges"

if [ $1 -lt $# ]
then
    echo "This is like comparing $fruit1 and $fruit2!"
elif [ $1 -gt $2 ]
then
    echo "$fruit1 wins!"
else
    echo "$fruit2 wins!"
fi
