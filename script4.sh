#!/bin/bash
# Script 4: Log File Analyzer
# Author: Drishti | Course: Open Source Software
# Usage: ./script4.sh <logfile> <keyword>

LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please provide a valid log file."
    exit 1
fi

# Read file line by line and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print count summary
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print last 5 matching lines
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
