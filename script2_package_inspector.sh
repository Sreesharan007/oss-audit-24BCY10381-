#!/bin/bash

# Script: FOSS Package Inspector
# Checks package installation and version

PACKAGE="procps"   # Package name

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Verify if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    
    # Extract and display version
    dpkg -l | grep $PACKAGE | awk '{print "Version:", $3}'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Display package description
case $PACKAGE in
    procps)
        echo "procps: Provides tools like ps, top to monitor CPU scheduling"
        ;;
    bash)
        echo "bash: Shell for system interaction"
        ;;
    coreutils)
        echo "coreutils: Basic system utilities"
        ;;
    *)
        echo "No description available"
        ;;
esac
