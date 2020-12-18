@echo off

:: BatchGotAdmin
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
:Main
color f1
@echo off
mode con cols=80 lines=20
echo                       Phantom Forces Font Changer
echo                     Brought To You By Over-Alphine.........
echo             This Is Not The Latest Version. Proceed with caution.
set /p confirm=Please Press Y Then Enter To Proceed, Press Other Key To Quit : 
echo.


if "%confirm%"=="y" goto Main2
if not "%confirm%"=="y" goto ABORT


:Main2
color f1
mode con cols=80 lines=20
@echo off 
echo       Do you want to use single font?
echo          Press 1 to use single font.
echo         Press 2 to use double font.
set /p count=Please enter your answer.
echo.

if "%count%"=="1" goto SINGLE1
if "%count%"=="2" goto DOUBLE1

:SINGLE1
echo      Now rename your font to UI.ttf and press Y, then enter to proceed.
set /p confirm=Please Press Y Then Enter To Proceed, Press Other Key To Quit : 
echo.

if "%confirm%"=="y" goto SINGLE2
if not "%confirm%"=="y" goto ABORT

:SINGLE2
copy ui.ttf killfeed1.ttf
copy ui.ttf killfeed2.ttf
copy ui.ttf ui1.ttf
copy ui.ttf ui2.ttf
copy ui.ttf ui3.ttf
copy ui.ttf ui4.ttf
copy ui.ttf ui5.ttf
copy "killfeed1.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arial.ttf"
copy "killfeed2.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arialbd.ttf"
copy "ui1.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Bold.ttf"
copy "ui2.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-It.ttf"
copy "ui3.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Light.ttf"
copy "ui4.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Regular.ttf"
copy "ui5.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Semibold.ttf"
start delete.bat
exit

:DOUBLE1
echo      Now rename your one font to UI.ttf, another font to killfeed.ttf and press Y, then enter to proceed.
set /p confirm=Please Press Y Then Enter To Proceed, Press Other Key To Quit : 
echo.

if "%confirm%"=="y" goto DOUBLE2
if not "%confirm%"=="y" goto ABORT


:DOUBLE2
copy killfeed.ttf killfeed1.ttf
copy killfeed.ttf killfeed2.ttf
copy ui.ttf ui1.ttf
copy ui.ttf ui2.ttf
copy ui.ttf ui3.ttf
copy ui.ttf ui4.ttf
copy ui.ttf ui5.ttf
copy killfeed1.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arial.ttf
copy killfeed2.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arialbd.ttf
copy ui1.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Bold.ttf
copy ui2.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-It.ttf
copy ui3.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Light.ttf
copy ui4.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Regular.ttf
copy ui5.ttf C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Semibold.ttf
start delete.bat
exit

:ABORT
echo Process Aborted By User Request. Terminating..
timeout 3 /nobreak
exit
