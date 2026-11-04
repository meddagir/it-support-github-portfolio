param([string]$OutputCsv)
$ErrorActionPreference = 'Stop'
$os = Get-CimInstance Win32_OperatingSystem
$computer = Get-CimInstance Win32_ComputerSystem
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'" | Select-Object -First 1
$record = [pscustomobject]@{
  CollectedAt = (Get-Date).ToString('s')
  OS = $os.Caption
  OSVersion = $os.Version
  RAM_GB = [math]::Round($computer.TotalPhysicalMemory / 1GB, 2)
  FreeMemory_GB = [math]::Round($os.FreePhysicalMemory * 1KB / 1GB, 2)
  SystemDriveFree_GB = if ($disk) { [math]::Round($disk.FreeSpace / 1GB, 2) } else { $null }
  LastBoot = $os.LastBootUpTime
}
$record | Format-List
if ($OutputCsv) { $record | Export-Csv -NoTypeInformation -Path $OutputCsv; Write-Host "Saved report: $OutputCsv" }
