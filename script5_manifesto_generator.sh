#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
read -p "Tool you use daily: " TOOL
read -p "Meaning of freedom: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $OUTPUT
echo "Tools like $TOOL show the power of collaboration." >> $OUTPUT
echo "In the future, I will build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
