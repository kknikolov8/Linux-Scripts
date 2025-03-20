#!/bin/bash

#Simple script for exercising while loops.

counter=0

while [ $counter -lt 6 ]
do
  echo "Looping..."
  sleep 1
  echo "Value of c is $counter"
  (( counter ++ ))
  sleep 1
done

echo "Condition met. Loop ended."
