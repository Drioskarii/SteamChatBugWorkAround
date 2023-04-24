$processName = "steamwebhelper"
$process = Get-Process $processName

if ($process) {
     Write-Host "The process $processName is currently running."
    $process.Kill()

    Write-Host "The process tree for $processName has been terminated."
    $process = Get-Process -Name $processName -ErrorAction SilentlyContinue

    #It opens so fast that this can't keep up
#    if (!$process) {
#        Write-Host "The process $processName has been removed from Task Manager."
#    }
#    else {
#        Write-Host "The process $processName could not be removed from Task Manager."
#    }
}
else {
    Write-Host "The process $processName is not currently running."
}
