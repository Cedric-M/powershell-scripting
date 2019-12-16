$Path = $env:TEMP; 

Write-Host "Downloading Visual Studio Code" -ForegroundColor DarkGreen
$Installer = "vscode_installer.exe";
Invoke-WebRequest "https://aka.ms/win32-x64-user-stable" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Git for Windows" -ForegroundColor DarkGreen
$Installer = "git_installer.exe";
Invoke-WebRequest "https://git-scm.com/download/win" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Git Kraken" -ForegroundColor DarkGreen
$Installer = "gitkraken_installer.exe";
Invoke-WebRequest "https://www.gitkraken.com/download/windows64" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Read-Host -Prompt "Press Enter to exit"