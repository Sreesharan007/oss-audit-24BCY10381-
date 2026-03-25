#!/bin/bash
# Script 1: System Identity Report
# Author: Sreesharan P.N | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Sreesharan P.N"
SOFTWARE_CHOICE="Linux Process Scheduling"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display ---
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
