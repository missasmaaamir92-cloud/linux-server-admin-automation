#!/usr/bin/env bash

set -Eeuo pipefail

PROJECT_DIR="$HOME/linux-server-admin-automation"
REPORT_DIR="$PROJECT_DIR/logs"

mkdir -p "$REPORT_DIR"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
REPORT_FILE="$REPORT_DIR/system-audit-$TIMESTAMP.txt"

{
    echo "========================================"
    echo "       LINUX SYSTEM AUDIT REPORT"
    echo "========================================"
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo

    echo "----- OPERATING SYSTEM -----"
    cat /etc/os-release
    echo

    echo "----- KERNEL -----"
    uname -r
    echo

    echo "----- CPU -----"
    lscpu
    echo

    echo "----- MEMORY -----"
    free -h
    echo

    echo "----- DISK USAGE -----"
    df -h
    echo

    echo "----- SYSTEM UPTIME -----"
    uptime
    echo

    echo "----- NETWORK INTERFACES -----"
    ip -brief address
    echo

    echo "----- FILESYSTEM MOUNTS -----"
    findmnt
    echo

    echo "========================================"
    echo "         AUDIT COMPLETED"
    echo "========================================"

} > "$REPORT_FILE"

echo "System audit completed successfully."
echo "Report saved to: $REPORT_FILE"
