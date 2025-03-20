#!/bin/bash

# This script counts the number of active network interfaces on the system.
# - It uses `ip addr show` to list network interfaces.
# - Filters out the loopback interface using `grep -iv loopback`.
# - Counts the number of active interfaces using `grep -ic mtu` (which checks for MTU settings).
# - Based on the count, it prints:
#   - "1 active network interface found." if there is exactly one.
#   - "Multiple active interfaces found." if more than one is detected.
#   - "No active interface found." if no active interfaces exist.
#
# This script is useful for checking network availability on a system.


value=$(ip addr show | grep -iv loopback | grep -ic mtu)

if [ $value -eq 1 ]
then

  echo "1 active network interface found."


elif [ $value -gt 1 ]
then
  echo "$value active interfaces found."

else
  echo "No active interface found."
fi
