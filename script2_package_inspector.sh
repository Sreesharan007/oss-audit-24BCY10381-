#!/bin/bash
# Script 2: Process Scheduler Inspector

echo "Running Processes (Top 5 by CPU usage):"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

echo ""
echo "CPU Information:"
lscpu | grep "Model name"

echo ""
echo "Scheduling Insight:"
echo "Linux uses Completely Fair Scheduler (CFS)"
echo "It allocates CPU based on virtual runtime for fairness"
