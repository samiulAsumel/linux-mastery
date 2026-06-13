#!/bin/bash
# R1 - Linux Basics + Terminal
# Samiul Alam Sumel | linux-mastery

echo "=== Navigation ==="
pwd                        # where ami i?
ls -la                     # what is here?
ls -lh /var/log | head -10 # sorted view

echo "=== File Management ==="
mkdir -p /tmp/port-test/{vessels,cargo,berths}
touch /tmp/port-test/vessels/IMO-9234567.txt
cp /tmp/port-test/vessels/IMO-9234567.txt /tmp/port-test/cargo/
mv /tmp/port-test/cargo/IMO-9234567.txt /tmp/port-test/cargo/vessel-record.txt
ls -la /tmp/port-test/cargo/
rm -r /tmp/port-test

echo "=== System Info ==="
cat /etc/os-release | grep "PRETTY_NAME"
cat /etc/hostname

echo "Day 01 complete!"
