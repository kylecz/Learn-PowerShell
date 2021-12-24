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

Notepad
Notepad
Get-Process | Sort-Object -Property name | where-object {$_.name -eq "notepad"}
Get-Process -Name notepad | Sort-Object -Property id

ipconfig | Get-Member

$var1 = "world"
Write-Output "hello $var1"
$procs = Get-Process
$procs
$procs[0]
$procs[0] | Get-Member

Get-Process | Select-Object -property name, @{name= 'procid'; expression={$_.id}}

Notepad
Get-Process -name notepad
Get-Process -name notepad | Get-Member
Get-Help Stop-Process -full
Get-Process -name notepad | Stop-Process

Get-Process | where-object {$_.handles -gt 1000}
Get-Process | where handles -gt 1000
Get-Process | where handles -gt 1000 | Sort-Object -Property Handles | ft name, handles -AutoSize

$procs = Get-Process | where handles -gt 1000
$procs

Get-Process | Out-Default
Get-Process | Out-Host
Get-Process | Out-Printer
Get-Process | Out-GridView
Get-Process | Out-GridView -PassThru | Stop-Process

Get-Process > proc.txt
Notepad proc.txt
del .\proc.txt

Get-Process | Out-File process.txt
Get-Content .\process.txt

Get-Process
Get-Process | ft
Get-Process | fl

Get-Process | Export-csv cassy.csv
Cat .\cassy.csv
.\cassy.csv

$cassydata = import-csv .\cassy.csv
$cassydata
$cassydata | gm

Get-process | export-clixml val.xml
$procs = import-clixml .\val.xml 
$procs
$procs | gm

Get-Process | Measure-Object
Get-Process | Measure-Object WS -sum -Maximum -Minimum -Average
Get-Process | Sort-Object -Property WorkingSet
Get-Process | Sort WS -descending
Get-Process | Sort WS -descending | select -first 5

notepad
$procs = Get-Process
# close notepad that's running
$procs2 = Get-Process
Compare-Object -ReferenceObject $procs -DifferenceObject $procs2 -Property Name
