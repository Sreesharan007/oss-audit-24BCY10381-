#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Sreesharan P.N"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Uptime         : $UPTIME"
echo "Date & Time    : $DATE"
echo "OS License     : GNU General Public License"
