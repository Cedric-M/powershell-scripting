$Path = $env:TEMP; 

Write-Host "Downloading Google Chrome" -ForegroundColor DarkGreen
$Installer = "chrome_installer.exe";
Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading Mozilla Firefox" -ForegroundColor DarkGreen
$Installer = "mozilla_installer.exe";
Invoke-WebRequest "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-GB" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading flux" -ForegroundColor DarkGreen
$Installer = "flux_installer.exe"; 
Invoke-WebRequest "https://justgetflux.com/dlwin.html" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer

Write-Host "Downloading VLC" -ForegroundColor DarkGreen
$Installer = "vlc_installer.exe"; 
Invoke-WebRequest "https://get.videolan.org/vlc/3.0.8/win64/vlc-3.0.8-win64.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer
