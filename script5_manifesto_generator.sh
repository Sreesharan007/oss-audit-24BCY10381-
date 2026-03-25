#!/bin/bash
# Script 5: Open Source Manifesto Generator
# alias example: alias manifesto='./script5_manifesto_generator.sh'

echo "Answer the following questions:"
echo ""

read -p "1. Open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "--------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "--------------------------------" >> $OUTPUT
echo "I believe open source represents $FREEDOM." >> $OUTPUT
echo "Tools like $TOOL show how collaboration drives innovation." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it freely." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
