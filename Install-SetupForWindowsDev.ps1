$Path = $env:TEMP; 

Write-Host "Downloading Visual Studio Code" -ForegroundColor DarkGreen
$Installer = "vscode_installer.exe";
Invoke-WebRequest "https://aka.ms/win32-x64-user-stable" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Git for Windows" -ForegroundColor DarkGreen
$Installer = "git_installer.exe";
Invoke-WebRequest "https://github.com/git-for-windows/git/releases/download/v2.24.1.windows.2/Git-2.24.1.2-64-bit.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Git Kraken" -ForegroundColor DarkGreen
$Installer = "gitkraken_installer.exe";
Invoke-WebRequest "https://release.gitkraken.com/win64/GitKrakenSetup.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer