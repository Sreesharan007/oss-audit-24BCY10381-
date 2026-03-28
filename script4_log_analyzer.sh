#!/bin/bash

# Script: Log File Analyzer
# Counts keyword occurrences in a log file

LOGFILE=$1                     # Input log file
KEYWORD=${2:-"error"}          # Keyword (default: error)
COUNT=0                        # Counter

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Wait until file is not empty
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting..."
    sleep 2
done

# Read file and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "--------------------------------"

# Show last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
