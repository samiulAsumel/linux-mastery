#!/bin/bash
# ============================================================
# Port Cargo Intelligence - grep Practice Examples
# Author: Samiul Alam Sumel | Mongla Port Authority
# ============================================================


DATA_DIR=~/port-data

echo "=== PORT CARGO INTELLIGENCE - GREP PRACTICE EXAMPLES ==="
echo ""

echo "1. HAZARDOUS CARGo VESSELS:"
grep -i "hazardous" "$DATA_DIR/manifests.txt"
echo ""

echo "2. ARRIVED VESSEL COUNT: $(grep -c 'ARRIVED' "$DATA_DIR/manifest.txt)"
echo ""

echo "3. TODAY'S ERRORS:"
grep "ERROR" "$DATA_DIR/vessel_status.txt"
echo ""

echo "4. ALL IMO NUMBERS IN SYSTEM:"
grep -rh "IMO[0-9]*" "$DATA_DIR/" | cut -d ' ' -f1 | sort | uniq
echo ""

echo "=== REPORT GENERATED: $(date) ==="