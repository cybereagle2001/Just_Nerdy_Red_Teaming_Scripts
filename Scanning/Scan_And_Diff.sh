#!/bin/bash
mkdir /opt/nmap_diff
d=$(date + %Y-%m-%d)
y= $(date -d yesterday + %Y-%m-%d)
/usr/bin/nmap -T4 -oX /opt/nmap_diff/scan_$d.xml <ip_range> > /dev/null 2>&1
if [ -e /opt/nmap_diff /opt/nmap_diff/scan_$y.xml]; then
  /opt/nmap_diff/scan_$d.xml > /opt/nmap_diff/diff.txt
fi
