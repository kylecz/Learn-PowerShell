#### Module 1 - Fundamentals

dir | sort-object
dir | sort-object -descending
dir | sort-object -descending -property lastwritetime

$PSVersionTable

Get-Host
$PSVersionTable
$PSVersionTable.PSVersion

Dir
Get-ChildItem
Get-Alias Dir

Get-Process
Get-Process | format-list
Get-Process | fl

Get-Module
Get-Module -listavailable
Get-Command -Module Az.Compute
Get-Command -Module Az.Compute | Select-Object -Unique Noun
(Get-Module Az.Compute).Version

Get-Help Dir

#### Module 2 - Connect Commands

Get-Process a*
Get-Service a*
Get-Process a*; Get-Service a*

Get-Process a* | Get-Member

notepad
Get-Process
Get-Process | Where-Object{$_.name -eq "notepad"}
Get-Process | where-object {$_.name -eq "notepad"} | Get-Member

Notepad
(Get-process | where-object {$_.name -eq "notepad"})
(Get-process | where-object {$_.name -eq "notepad"}).kill
(Get-process | where-object {$_.name -eq "notepad"}).kill()











