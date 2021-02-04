color f1
mode con cols=80 lines=20
@echo off

echo Select installer option
echo If your Roblox executable is located under Program files, type 1.
echo If your Roblox executable is located under Appdata, type 2.
echo Wrong selection in this stage will result in failure. Be wary.
set /p instopt=Please select installer option.
if "%instopt%"=="1" goto BatchGotAdmin
if "%instopt%"=="2" goto User

:User
echo Please type your account name (ex. user)
set /p usrname=Type your local Windows account name...
goto Nonadmin

:Nonadmin
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/arial.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/arialbd.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Bold.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-It.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Light.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Regular.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Semibold.ttf
copy "arial.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\arial.ttf"
copy "arialbd.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\arialbd.ttf"
copy "SourceSansPro-Bold.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Bold.ttf"
copy "SourceSansPro-It.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-It.ttf"
copy "SourceSansPro-Light.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Light.ttf"
copy "SourceSansPro-Regular.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Regular.ttf"
copy "SourceSansPro-Semibold.ttf" "C:\Users\%usrname%\AppData\Local\Roblox\Versions\version-29d2a7fa87dd447b\content\fonts\SourceSansPro-Semibold.ttf"
start stock_delete.bat
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
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/arial.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/arialbd.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Bold.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-It.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Light.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Regular.ttf
wget https://github.com/Over-Alphine/PF_font_changer/blob/main/Stock/SourceSansPro-Semibold.ttf
copy "arial.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arial.ttf"
copy "arialbd.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arialbd.ttf"
copy "SourceSansPro-Bold.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Bold.ttf"
copy "SourceSansPro-It.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-It.ttf"
copy "SourceSansPro-Light.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Light.ttf"
copy "SourceSansPro-Regular.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Regular.ttf"
copy "SourceSansPro-Semibold.ttf" "C:\Program Files (x86)\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Semibold.ttf"
start stock_delete.bat
exit