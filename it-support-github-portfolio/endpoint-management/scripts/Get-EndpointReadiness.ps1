$ErrorActionPreference = 'Stop'
$os = Get-CimInstance Win32_OperatingSystem
$drive = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'" | Select-Object -First 1
$tpm = try { (Get-Tpm -ErrorAction Stop).TpmPresent } catch { 'Unavailable' }
[pscustomobject]@{
  OS = $os.Caption
  Version = $os.Version
  FreeDiskGB = if ($drive) { [math]::Round($drive.FreeSpace / 1GB,2) } else { $null }
  TpmPresent = $tpm
  Note = 'Informational only; not a full Autopilot eligibility assessment'
} | Format-List
