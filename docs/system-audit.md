# Linux System Audit — Day 1

## Environment

- Operating System: Ubuntu 24.04.4 LTS
- Kernel: 6.8.0-146-generic
- Architecture: x86_64
- CPU: Intel Core i5-4570 @ 3.20 GHz
- CPU Cores: 4

## Disk Usage

- Root Filesystem: /dev/sda2
- Total Capacity: 234 GB
- Used: 82 GB
- Available: 141 GB
- Utilization: 37%

## Network Inspection

Network information was collected using:

ip -brief address

The system contains physical network interfaces
and Docker bridge interfaces.

## Automation

Created and executed:

scripts/system-audit.sh

The script collects:

- Operating system information
- Kernel version
- CPU information
- Memory utilization
- Disk utilization
- System uptime
- Network interfaces
- Filesystem mount information

## Output

A timestamped report is generated in the logs/
directory whenever the script runs.

## Skills Demonstrated

- Linux command-line administration
- System resource inspection
- Network interface inspection
- Bash scripting
- File permissions
- Automated reporting
- Git repository initialization
