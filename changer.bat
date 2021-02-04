color f1
mode con cols=80 lines=20
@echo off
echo Select installer option. 
echo If your Roblox executable is located under Program files, type 1.
echo If your Roblox executable is located under Appdata, type 2.
echo Wrong selection in this stage will result in failure. Be wary.
set /p instopt=Please select installer option.
if "%instopt%"=="1" goto BatchGotAdmin
if "%instopt%"=="2" goto User

:User
echo Please type your account name (ex. user)
set /p usrname=Type your local Windows account name...
goto USR1


:USR1
echo      Now rename your font to UI.ttf and press Y, then enter to proceed.
set /p confirm=Please Press Y Then Enter To Proceed, Press Other Key To Quit : 
echo.

if "%confirm%"=="y" goto USR2
if not "%confirm%"=="y" goto ABORT

:USR2
copy ui.ttf killfeed1.ttf
copy ui.ttf killfeed2.ttf
copy ui.ttf ui1.ttf
copy ui.ttf ui2.ttf
copy ui.ttf ui3.ttf
copy ui.ttf ui4.ttf
copy ui.ttf ui5.ttf
copy "killfeed1.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\arial.ttf"
copy "killfeed2.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\arialbd.ttf"
copy "ui1.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Bold.ttf"
copy "ui2.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-It.ttf"
copy "ui3.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Light.ttf"
copy "ui4.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Regular.ttf"
copy "ui5.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Semibold.ttf"
start delete.bat
exit


:BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------   


:ADMIN
color f1
mode con cols=80 lines=20
@echo off 
echo      Now rename your font to UI.ttf and press Y, then enter to proceed.
set /p confirm=Please Press Y Then Enter To Proceed, Press Other Key To Quit : 
echo.

if "%confirm%"=="y" goto ADMIN2
if not "%confirm%"=="y" goto ABORT

:ADMIN2
copy ui.ttf killfeed1.ttf
copy ui.ttf killfeed2.ttf
copy ui.ttf ui1.ttf
copy ui.ttf ui2.ttf
copy ui.ttf ui3.ttf
copy ui.ttf ui4.ttf
copy ui.ttf ui5.ttf
copy "killfeed1.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\arial.ttf"
copy "killfeed2.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\arialbd.ttf"
copy "ui1.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Bold.ttf"
copy "ui2.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-It.ttf"
copy "ui3.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Light.ttf"
copy "ui4.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Regular.ttf"
copy "ui5.ttf" "C:\Program Files (x86)\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Semibold.ttf"
start delete.bat
exit

:ABORT
echo Process Aborted By User Request. Terminating..
timeout 3 /nobreak
