#!/bin/bash

# This script provides system status information, including:
# - The logged-in user's name and the hostname of the machine
# - Available free RAM in MB
# - Current system load average
# - Free space available in the root partition
#
# The script uses commands like free, uptime, and df to fetch system details
# and extracts relevant data using awk for formatted output.

echo "Welcome $USER on $HOSTNAME!"
echo "##############################"

#Declared Variables:
FREE_RAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=$(uptime | awk '{print $9}')
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

echo "##############################"
echo "Available Free RAM is $FREE_RAM MB."
echo "##############################"
echo "Current Load Average: $LOAD"
echo "##############################"
echo "Free ROOT partition size is $ROOTFREE"
