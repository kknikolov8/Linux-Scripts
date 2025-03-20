# Linux Scripting Repository

## Overview
This repository contains a collection of Linux shell scripts that demonstrate my knowledge and proficiency in Bash scripting. The scripts showcase the use of:
- **Conditional statements** (`if`, `elif`, `else`)
- **Exit codes** (`exit 0`, `exit 1`, etc.)
- **For loops** (`for var in list; do ... done`)
- **While loops** (`while condition; do ... done`)
- **Arithmetic operations** (`let`, `(( ))`, `expr`, etc.)

## Purpose
The scripts included in this repository serve as a practical demonstration of my skills in Linux scripting and automation. They cover various scenarios, such as:
- Handling user input and validating arguments
- Controlling script execution flow using exit codes
- Iterating over files, directories, and user-provided data
- Performing arithmetic operations
- Checking process status and controlling services
- Monitoring system information and network interfaces

## Main Scripts

### 1. **monitor_processes.sh**
   - **Purpose**: This script monitors the status of a specific process (e.g., HTTPD) and ensures it is running. If the process is not running, it attempts to start it.
   - **Key Concepts**: 
     - Process monitoring
     - Service management using `systemctl`
   
### 2. **system_info.sh**
   - **Purpose**: Provides system status information including free RAM, system load, and disk space of the root partition.
   - **Key Concepts**: 
     - Fetching system details using commands like `free`, `uptime`, and `df`
     - Displaying formatted output using `echo`

### 3. **count_network_interfaces.sh**
   - **Purpose**: Counts the number of active network interfaces on the system and provides a message based on the number of interfaces found.
   - **Key Concepts**: 
     - Using `ip addr` and `grep` for extracting network details
     - Conditional statements based on the number of active network interfaces

### 4. **while_loop.sh**
   - **Purpose**: A simple script that demonstrates the use of `while` loops to iterate a specified number of times, with a counter that increments by 1 or doubles each time.
   - **Key Concepts**:
     - Looping with `while`
     - Arithmetic operations for incrementing and multiplying a counter

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/kknikolov8/Linux-Scripts.git
   cd Linux-Scripts


## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/kknikolov8/Linux-Scripts.git
   cd Linux-Scripts
   ```
2. Grant execution permissions to a script:
   ```bash
   chmod +x script_name.sh
   ```
3. Run the script:
   ```bash
   ./script_name.sh
   ```

## Prerequisites
- A Linux-based system with **Bash** installed
- Basic familiarity with the terminal and command-line execution

## Contributions
If you'd like to contribute, feel free to fork the repository and submit a pull request. Suggestions and improvements are always welcome!
