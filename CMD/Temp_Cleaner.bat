@echo off
:index
cls
title Temp Cleaner
color 0f
echo.
echo      T e m p C l e a n e r
echo      ---------------------
echo.
echo.
echo   1. Clean now
echo.
echo   2. Go To Temp Folder
echo.
echo   0. Exit
set /p choice=$ Type a number and press enter :
if not defined choice (
       goto error
)
if %choice%==1 goto clean
if %choice%==2 start %temp% && goto index
if %choice%==0 goto:eof
if errorlevel==1 goto error

:error
title Error
color 4f
echo.
echo.
echo  Command not recognized
timeout /t 2 /nobreak>nul
goto index

:clean
title I am now cleaning the temp files, please wait!
color 0a
echo.
del /f /s /q "%temp%\"
echo.
title Done :) 






