$Path = $env:TEMP; 

Write-Host "Downloading Steam" -ForegroundColor DarkGreen
$Installer = "SteamSetup.exe";
Invoke-WebRequest "https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Discord" -ForegroundColor DarkGreen
$Installer = "discord_installer.exe";
Invoke-WebRequest "https://discordapp.com/api/download?platform=win" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Battle.net® Desktop App" -ForegroundColor DarkGreen
$Installer = "bnet_installer.exe";
Invoke-WebRequest "https://www.blizzard.com/en-gb/download/confirmation?platform=windows&locale=enGB&version=LIVE&id=bnetdesk" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer


