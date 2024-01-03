# Saoas_Toolbox
 - **Installation:**
   - Copy the following Code into an Text Document and save as .cmd File, then Start the file.
   - or Download [THIS FILE](https://github.com/SaoasBlubb/Saoas_Toolbox/releases/download/latest/Saoas_Toolbox.cmd) and Start the file.
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
wget -q --show-progress --user-agent="chrome" --no-hsts "https://files.saoas.tv/Toolbox/Saoas_Toolbox.exe" -O Saoas_Toolbox.exe
del /f wget.exe 
Saoas_Toolbox.exe
```

#####


![ToolboxMainMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/e18d2b7e-3323-436f-ada4-b246e98b52b4)


![ToolsMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/46057e1f-c5bd-4644-aa75-57631ae0a01f)


![Runtimes_FrameworksMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/4ace0f05-0ea8-4267-b83c-8de877e3c1bd)


![ProgramsMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/14f86f14-a54d-46b3-88c8-6e1160d660d4)


![InternetBrowsersMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/87085c82-b26a-4bd1-b98d-eecec9ed6a21)


![WindowsTweaksMainMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/74ced1a0-19b5-48df-8d8e-21142867609c)


![WindowsTweaksMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/db9116b3-1399-43fb-99a8-b9e876ec5634)


![WindowsTweaksMenu2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/d5089525-6998-4409-b83b-fdc68622880f)


![WindowsTweaksMenu3](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/10eec5e0-2626-4f46-b779-b85bd6489391)


![ContextTweaksMenu1](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/7a6cc607-1bd9-491b-bb81-63046b3ef750)


![ContextTweaksMenu2](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/c5f487dd-4841-446b-9428-50de84b6b60c)


![ContextTweaksMenu3](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/46fa3f79-b355-44bb-b8ba-43ffa0b32912)


![ContextTweaksMenu4](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/d9f628ea-4f3d-4654-b113-383d885cc426)


![PacketManagersMenu](https://github.com/SaoasBlubb/Saoas_Toolbox/assets/56938581/20e6533e-9781-480d-b3e1-a21a46e99609)
