#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' '=== Linux health check ==='
date -u '+UTC: %Y-%m-%d %H:%M:%S'
printf '\nUptime:\n'
uptime
printf '\nMemory:\n'
free -h
printf '\nDisk usage:\n'
df -h
if command -v systemctl >/dev/null 2>&1; then
  printf '\nFailed systemd units:\n'
  systemctl --failed --no-pager || true
fi
