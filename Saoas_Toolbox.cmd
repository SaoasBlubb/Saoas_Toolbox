@echo off & setlocal
net session >NUL 2>&1 && goto :ELEVATED
set ELEVATE_CMDLINE=cd /d "%~dp0" ^& "%~f0" %*
powershell.exe -noprofile -c Start-Process -Verb RunAs cmd.exe \"/c $env:ELEVATE_CMDLINE\"
exit /b %ERRORLEVEL%
:ELEVATED

set "psCommand=Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://files.saoas.tv/path.ps1'))"

mkdir "%USERPROFILE%\Desktop\Saoas_Tools"
mkdir "C:\Saoas"

powershell -NoLogo -Sta -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command "& {%psCommand%}"
powershell -Command Add-MpPreference -ExclusionProcess "Saoas_Toolbox.exe" -Force
powershell -Command Add-MpPreference -ExclusionProcess "Installer.exe" -Force
powershell -Command Add-MpPreference -ExclusionProcess "Multi_Downloader.exe" -Force
powershell -Command Add-MpPreference -ExclusionPath "%USERPROFILE%\Desktop\Saoas_Tools" -Force
powershell -Command Add-MpPreference -ExclusionPath "C:\Saoas" -Force

cd "%USERPROFILE%\Desktop\Saoas_Tools"
powershell Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/64/wget.exe" -OutFile "wget.exe"
xcopy %USERPROFILE%\Desktop\Saoas_Tools\wget.exe C:\Saoas /y
wget -q --show-progress --user-agent="chrome" --no-hsts https://files.saoas.tv/Toolbox/Saoas_Toolbox.exe -O Saoas_Toolbox.exe
del %USERPROFILE%\Desktop\Saoas_Tools\wget.exe
move %USERPROFILE%\Desktop\Saoas_Tools\Saoas_Toolbox.exe %USERPROFILE%\Desktop
