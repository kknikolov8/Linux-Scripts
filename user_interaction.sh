#!/bin/bash

# This script collects user input for skills and login credentials.
# - It prompts the user to enter their skill, which is then displayed with a message.
# - It securely asks for a username and password (hiding the password input).
# - After entering credentials, it prints a login success message with the username.
#
# This script can be used as a basic interactive shell program for user input handling.

echo "Enter your skills:"
read SKILL

echo "Your $SKILL skill is in high demand in the IT industry."

read -p 'Username: ' USR
read -sp 'Password: ' pass

echo

echo "Login Successfull: Welcome user $USR"
