# Network Troubleshooting Toolkit

Basic PowerShell diagnostics for an authorized test network. Default endpoint is example.com; choose your own endpoint if needed.

## Run

```powershell
.\scripts\Test-NetworkHealth.ps1 -Target example.com
```

Checks DNS resolution, ping reachability, and default IPv4 gateway information. ICMP can be blocked even when services are reachable.
