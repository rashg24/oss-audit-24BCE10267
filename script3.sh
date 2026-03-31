#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Drishti | Course: Open Source Software
# Loops through key system directories and reports permissions and sizes

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get human-readable size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""

# Check if VLC config directory exists
CONFIG_DIR="/etc/vlc"
if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "VLC Config Directory: $CONFIG_DIR => Permissions: $PERMS"
else
    echo "VLC config directory not found"
fi
