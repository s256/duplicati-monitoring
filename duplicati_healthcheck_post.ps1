# Save this in a file with a .ps1 extension, e.g. C:\Scripts\healthchecks.ps1
# The command to run it:
#     powershell.exe -ExecutionPolicy bypass -File C:\Scripts\healthchecks.ps1
#
$result = $args[0]
$resultfile = $args[1]
$body = Get-Content $resultfile
$hcuri = "https://hc-ping.com/UUID"
if ($result -eq "Success") {
    $Params = @{
        Method      = "Post"
        Uri         = $hcuri
        Body        = $body
        ContentType = "application/json"
    }
    Invoke-RestMethod @Params
}
else {
    $Params = @{
        Method      = "Post"
        Uri         = $hcuri + "/fail"
        Body        = $body
        ContentType = "application/json"
    }
    Invoke-RestMethod @Params
}
