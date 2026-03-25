#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks process-related packages

PACKAGE="procps"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE | awk '{print "Version:", $3}'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for description
case $PACKAGE in
    procps)
        echo "procps: Provides tools like ps, top to monitor CPU scheduling"
        ;;
    bash)
        echo "bash: Shell used to interact with Linux system"
        ;;
    coreutils)
        echo "coreutils: Basic file and system utilities"
        ;;
    *)
        echo "No description available"
        ;;
esac
