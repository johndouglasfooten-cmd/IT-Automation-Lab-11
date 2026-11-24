
#!/bin/bash

# ==========================================
# CIS 4431 - IT Automation
# Lab 11 - Linux Disk Space Monitoring
# ==========================================

# Student Information
# Change the name below to your full name.
STUDENT_NAME="John Footen"

# Display student information
echo "=================================="
echo "Linux Disk Space Report"
echo "=================================="
echo "Student Name: $STUDENT_NAME..version5"
echo "Computer Name: $(hostname)"
echo "Date: $(date)"
echo "=================================="

# Display available disk space
echo ""
echo "Disk Space Information:"
df -h /

echo ""
echo "Report Completed!"
