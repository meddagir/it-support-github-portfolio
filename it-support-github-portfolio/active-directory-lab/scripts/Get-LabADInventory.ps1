param([Parameter(Mandatory=$true)][string]$SearchBase)
$ErrorActionPreference = 'Stop'
Import-Module ActiveDirectory -ErrorAction Stop
Get-ADUser -Filter * -SearchBase $SearchBase -Properties Enabled,LastLogonDate |
  Select-Object Name,Enabled,LastLogonDate |
  Sort-Object Name |
  Format-Table -AutoSize
