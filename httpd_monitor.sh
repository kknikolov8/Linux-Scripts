#!/bin/bash

# This script checks if the HTTPD (Apache) process is running.
# - If the process is running, it confirms the status.
# - If the process is NOT running, it attempts to start it.
# - If the start operation fails, it notifies the user to contact the system administrator.

# Check if HTTPD is running by verifying its PID file
ls /var/run/httpd/httpd.pid > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "HTTPD process is running."
else
  echo "HTTPD process is NOT running."
  sleep 3
  echo "Starting the HTTPD process..."
  
  # Attempt to start the HTTPD service
  systemctl start httpd

  if [ $? -eq 0 ]; then
    echo "Process started successfully!"
  else
    echo "Process FAILED to start. Please contact the system administrator!"
  fi
fi
