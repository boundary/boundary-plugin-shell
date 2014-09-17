#checks the current state of a given service, returning 1 for running, 0 for anything els
#Needs the service name as an arg, can be the actual name or the display name in ""
#returns whatever was supplied with _ for spaces and the hostname prepended. 
#Get the service name
$serviceName=$args[0]
#check if the service is running, if not we send 0
$service= (Get-Service $serviceName) 
$status=0
if ($service.status -eq "Running"){$status=1}
# Get host, service name passed to us & replace spaces with _
$source = (hostname)+"_"+($serviceName -replace ' ', '_')
#option - force the nicer display name by using this:
#$source = (hostname)+"_"+($service.displayname -replace ' ', '_')
# Output the metric, standard out
"BOUNDARY_SERVICE_CHECK $status $source"