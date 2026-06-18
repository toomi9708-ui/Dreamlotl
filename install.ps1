$link = "https://github.com/Dreamcord/Dreamlotl/releases/latest/download/DreamlotlCli.exe"

$outfile = "$env:TEMP\DreamlotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
