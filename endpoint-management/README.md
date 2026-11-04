# Endpoint Management Lab

This module provides **local readiness checks** and a deployment checklist. It does not connect to Microsoft Intune or SCCM and does not perform enrollment.

## Run

```powershell
.\scripts\Get-EndpointReadiness.ps1
```

## Lab runbook

1. Prepare a personal Windows test VM.
2. Confirm OS build, TPM status and free disk space.
3. In a properly licensed test tenant, review enrollment prerequisites.
4. Configure a test group and compliance policy using official Microsoft documentation.
5. Validate policy on a test device and record sanitized outcomes.
6. Never export tenant identifiers, device serials, or corporate policy screenshots.

## Skills
Windows endpoint readiness, Intune/Autopilot concepts, deployment documentation.
