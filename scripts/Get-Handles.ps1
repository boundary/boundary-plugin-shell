<#

.SYNOPSIS

Retrieves the sum of handles (GDI Objects, Kernel Objects, etc) from all the
processes running on the Windows host.

.EXAMPLE

PS > Get-Handles
Gets the total number of handles

.EXAMPLE

PS > Get-DiskUsage -IncludeSubdirectories
Gets the disk usage for the current directory and those below it,
adding the size of child directories to the directory that contains them.

#>

# Initialize our count of the number of handles
$handleCount = 0

# Loop through each process, get the number of handles, compute the sum
foreach($process in Get-Process) { $handleCount += $process.Handles }

# Get the source of the metric in this case the host
$source = hostname

# Output the metric, standard out??
"BOUNDARY_WINDOWS_HANDLES $handleCount $source"
