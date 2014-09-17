#looks for events of a specific event ID in a specific log since the last polling time (this is a kludge and is actually set by hand below)
#expects args in the format logname, eventID, meaningful name of the error
#returns the meaningful name with the hostname prepended
$log=$args[0]
$eventID=$args[1]
$source=(hostname)+"_"+$args[2]
$eventCount=0
#change this to your chosen polling interval...
$date=[DateTime]::Now.Subtract([TimeSpan]::FromSeconds(10))
#$date=[DateTime]::Now.Subtract([TimeSpan]::FromHours(1))
$events= get-eventlog -logname $log -after $date | ?{$_.eventid -eq $eventID} | group-object -property eventid 
if ($events -ne $null){$eventCount=$events.count}
"BOUNDARY_EVENT_CHECK $eventCount $source"