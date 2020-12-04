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




color f1
mode con cols=80 lines=20
move killfeed.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\arial.ttf
move killfeed.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\arialbd.ttf
move ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Bold.ttf
move ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-It.ttf
move ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Light.ttf
move ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Regular.ttf
move ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-49e05c4106b541bf\content\fonts\SourceSansPro-Semibold.ttf
start delete.bat
exit
