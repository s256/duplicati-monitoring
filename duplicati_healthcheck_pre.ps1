# Save this in a file with a .ps1 extension, e.g. C:\Scripts\healthchecks.ps1
# The command to run it:
#     powershell.exe -ExecutionPolicy bypass -File C:\Scripts\healthchecks.ps1
#
$URI = "https://hc-ping.com/UUID"
Invoke-RestMethod $URI + "/start"
