@echo off
powershell -Command "Remove-Item -Recurse -Force $env:localappdata\Temp\N11\ -erroraction silentlycontinue"
mkdir %localappdata%\Temp\N11
curl https://raw.githubusercontent.com/nano11-dev/post-setup/main/updater.ps1 -o %localappdata%\Temp\N11\updater.ps1
powershell -Command "%localappdata%\Temp\N11\updater.ps1"