#### Module 1

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







