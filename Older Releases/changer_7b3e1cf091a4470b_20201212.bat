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
copy killfeed.ttf killfeed1.ttf
copy ui.ttf ui1.ttf
copy ui.ttf ui2.ttf
copy ui.ttf ui3.ttf
copy ui.ttf ui4.ttf
copy killfeed.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arial.ttf
copy killfeed1.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arialbd.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Bold.ttf
copy ui1.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-It.ttf
copy ui2.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Light.ttf
copy ui3.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Regular.ttf
copy ui4.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Semibold.ttf
start delete.bat
exit

:ABORT
echo Process Aborted By User Request. Terminating..
timeout 3 /nobreak
exit


copy killfeed.ttf killfeed1.ttf
copy ui.ttf ui1.ttf
copy ui.ttf ui2.ttf
copy ui.ttf ui3.ttf
copy ui.ttf ui4.ttf
copy killfeed.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arial.ttf
copy killfeed1.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\arialbd.ttf
copy ui.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Bold.ttf
copy ui1.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-It.ttf
copy ui2.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Light.ttf
copy ui3.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Regular.ttf
copy ui4.ttf C:\Users\User\AppData\Local\Roblox\Versions\version-7b3e1cf091a4470b\content\fonts\SourceSansPro-Semibold.ttf
start delete.bat
exit
