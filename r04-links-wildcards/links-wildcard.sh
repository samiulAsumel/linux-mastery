#!/bin/bash
# R4: Links, Wildcards, find — Mongla Port Practice
# Author: Samiul
# Purpose: Demonstrate hard links, soft links, wildcards, find

echo "=== PORT FILE MANAGEMENT SYSTEM ==="
echo ""

# Hard link demo
echo "--- Creating Hard Links ---"
echo "Vessel manifest data" >/tmp/vessel_data.txt
ln /tmp/vessel_data.txt /tmp/vessel_backup.txt
echo "Original inode:$(ls -i /tmp/vessel_data.txt | cut -d' ' -f1)"
echo "Hardlink inode:$(ls -i /tmp/vessel_backup.txt | cut -d' ' -f1)"
echo "(Same inode = same data)"
echo ""

# Soft link demo
echo "--- Creating Soft Links ---"
ln -s /tmp/vessel_data.txt /tmp/current_vessel_link
ls -la /tmp/current_vessel_link
echo ""

# Wildcard demo
echo "--- Files matching pattern in current dir ---"
ls ~/linux-mastery/r04-links-wildcards/*.conf 2>/dev/null || echo "No .conf files found"
ls ~/linux-mastery/r04-links-wildcards/*.txt 2>/dev/null | wc -l | xargs echo "Total .txt files:"
echo ""

# find demo
echo "--- Finding config files in /etc (top 5) ---"
find /etc -name "*.conf" -type f 2>/dev/null | head -5
echo ""

echo "=== Port File Management Complete ==="

# Cleanup
rm -f /tmp/vessel_data.txt /tmp/vessel_backup.txt /tmp/current_vessel_link
