#!/bin/bash

# Script: Disk and Permission Auditor
# Checks directory permissions and size

# List of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Scheduling-related Directory (/proc)"

CONFIG_DIR="/proc"   # Special system directory

# Check /proc directory details
if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "$CONFIG_DIR => Permissions: $PERMS"
else
    echo "$CONFIG_DIR not found"
fi
