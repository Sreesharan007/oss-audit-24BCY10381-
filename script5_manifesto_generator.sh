#!/bin/bash

# Script: Open Source Manifesto Generator
# Creates a personal manifesto file from user input

echo "Answer the following questions:"
echo ""

# Take user inputs
read -p "1. Open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

# Set date and output file name
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write manifesto content to file
echo "--------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "--------------------------------" >> $OUTPUT
echo "I believe open source represents $FREEDOM." >> $OUTPUT
echo "Tools like $TOOL show how collaboration drives innovation." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it freely." >> $OUTPUT

# Display output file
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
