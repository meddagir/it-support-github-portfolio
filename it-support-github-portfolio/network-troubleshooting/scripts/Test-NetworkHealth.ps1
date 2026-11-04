param([string]$Target='example.com')
Write-Host "Target: $Target"
Write-Host 'DNS:'
try { Resolve-DnsName -Name $Target -ErrorAction Stop | Select-Object -First 5 Name,Type,IPAddress | Format-Table } catch { Write-Warning $_.Exception.Message }
Write-Host 'Ping:'
try { Test-Connection -ComputerName $Target -Count 2 -ErrorAction Stop | Format-Table } catch { Write-Warning "ICMP failed or blocked: $($_.Exception.Message)" }
Write-Host 'IPv4 default route:'
try { Get-NetRoute -DestinationPrefix '0.0.0.0/0' -ErrorAction Stop | Select-Object InterfaceAlias,NextHop,RouteMetric | Format-Table } catch { Write-Warning $_.Exception.Message }
