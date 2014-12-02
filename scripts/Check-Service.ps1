<#

.SYNOPSIS

Monitors a Window's Service and indicates if it is running.

.EXAMPLE

PS > Check-Service 
Gets the number of handles allocated by all the processes running on the host.

#>
param(ServiceName)

$service = Get-Service -Name $ServiceName

if ($service.Status -ne "Started") {
    Write-Host "BOUNDARY_WINDOWS_SERVICE 1 $ServiceName" 
}
else {
    Write-Host "BOUNDARY_WINDOWS_SERVICE 0 $ServiceName" 
}

# Output the metric, standard out??
"BOUNDARY_WINDOWS_HANDLES $handleCount $source"
