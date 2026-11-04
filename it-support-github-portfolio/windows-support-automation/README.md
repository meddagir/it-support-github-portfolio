# Windows Support Automation

Read-only PowerShell health inventory for personal Windows machines.

## Run

```powershell
powershell -NoProfile -File .\scripts\Get-WorkstationHealth.ps1
```

Outputs system summary to console. Optional `-OutputCsv .\health.csv` writes a report (ignored by Git). Avoid publishing raw host/user identifiers.

## Skills
PowerShell, Windows diagnostics, CIM, incident triage.
