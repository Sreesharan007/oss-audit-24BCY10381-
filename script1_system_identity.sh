#!/bin/bash

# Script: System Identity Report
# Displays basic system details for OSS audit

# Store user and topic details
STUDENT_NAME="Sreesharan P.N"
SOFTWARE_CHOICE="Linux Process Scheduling"

# Retrieve system information
KERNEL=$(uname -r)        # Kernel version
USER_NAME=$(whoami)       # Current logged-in user
UPTIME=$(uptime -p)       # System uptime
DATE=$(date)              # Current date and time
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')  # OS name

# Print formatted report
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software Topic : $SOFTWARE_CHOICE"
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Distro         : $DISTRO"
echo "Uptime         : $UPTIME"
echo "Date & Time    : $DATE"
echo "License        : GNU General Public License (GPL)"
