function test-connectivity {
#Get-NetIPAddress | Where-Object {$_.InterfaceAlias -eq "Ethernet"} | select IPAddress,PrefixLength,PrefixOrigin,InterfaceAlias
Write-host "************IP information****************"
write-host "IP address:" (Get-NetIPAddress | Where-Object {$_.InterfaceAlias -eq "Ethernet"-AND $_.AddressFamily -eq 'IPv4'}).IPAddress
write-host "Default gateway address:" (Get-wmiObject Win32_networkAdapterConfiguration | ?{$_.IPEnabled}).DefaultIPGateway
Write-host "************Conectivity-Test**************"
$computers = "google.com","yahoo.com","youtube.com"
<#
$i=0
foreach ($computer in $computers) {
Resolve-DnsName -Name $computers[$i] | Select Name, NameHost, IP4Address
$i=$i+1
}
#>
test-connection $computers -Count 1 | Select Address,IPv4Address,ResponseTime,BufferSize
Write-host ""
Write-host "******************************************"
}
function open-link{
param( $link)
start-process -filepath "C:\Program Files (x86)\Google\Chrome\Application\Chrome.exe" -ArgumentList $link
write-host "$link Open!"
}

function top-process {
Get-Process | Sort CPU -descending | Select -first 5 -Property ID,ProcessName,CPU | format-table -autosize
}