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
Invoke-WebRequest "https://www.battle.net/download/getInstallerForGame?os=win&locale=enGB&version=LIVE&gameProgram=BATTLENET_APP" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Origin® Desktop App" -ForegroundColor DarkGreen
$Installer = "origin_installer.exe";
Invoke-WebRequest "https://www.dm.origin.com/download" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer


