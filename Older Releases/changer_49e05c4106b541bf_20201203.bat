:Main
color f1
@echo off
mode con cols=80 lines=20
echo                       Phantom Forces Font Changer
echo                     Brought To You By Over-Alphine.........
echo             This Is Not The Latest Version. Proceed with caution.
set /p confirm=Please Press Y Then Enter To Proceed, Press Other Key To Quit : 
echo.


if "%confirm%"=="y" goto EXECUTE
if not "%confirm%"=="y" goto ABORT


:EXECUTE
color f1
mode con cols=80 lines=20
copy killfeed.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\arial.ttf
copy killfeed.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\arialbd.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Bold.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-It.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Light.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Regular.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Semibold.ttf
start delete.bat
exit

:ABORT
echo Process Aborted By User Request. Terminating..
timeout 3 /nobreak
exit
