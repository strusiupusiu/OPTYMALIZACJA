title Optymalizator FIVEM by DZIADEKBOMBA
@echo off
timeout /t 1 /nobreak > NUL
openfiles > NUL 2>&1
if %errorlevel%==0 (
    echo Otwieram, zweryfikowane uprawnienia administratora...
) else (
cls
     echo Musisz go otworzyc jako admin jezeli program sie zamyka.
     echo.
     echo Aby to zrobic, kliknij prawym przyciskiem myszy i uruchom jako administrator.
     echo.
     echo Nacisnij dowolny klawisz, aby zamknac.
    pause > NUL
    exit
)

echo.
color 6
cls
echo ----------------------------------------------------------------------------------
echo Ten skrypt pozwala zoptymalizowac fps.
echo 
echo ----------------------------------------------------------------------------------
echo        Skrypt dla FIVEM na PC
echo 	Naprawia bledy wyswietlania i fps
echo 					
echo ----------------------------------------------------------------------------------
echo Nacisnij dowolny przycisk, aby kontynuowac
pause >nul
cls
echo Skrypt rozpocznie sie za kilka chwile...
echo ----------------------------------------------------------------------------------
echo DZIADEKBOMBA
echo ----------------------------------------------------------------------------------
ping -n 6 127.0.0.1 > nul

cls
echo W trakcie... 1 wykonany na 13
powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
cls
echo W trakcie... 2 wykonany na 13
taskkill /f /im GTAVLauncher.exe
cls
echo W trakcie... 3 wykonany na 13
wmic process where name="GTA5.exe" CALL setpriority 128
cls
echo W trakcie... 4 wykonany na 13
wmic process where name="FiveM.exe" CALL setpriority 128
cls
echo W trakcie... 5 wykonany na 13
wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128
cls
echo W trakcie... 6 wykonany na 13
taskkill /f /im wmpnetwk.exe.exe
cls
echo W trakcie... 7 wykonany na 13
taskkill /f /im OneDrive.exe
cls 
echo W trakcie... 8 wykonany na 13
taskkill /f /im speedfan.exe
cls
echo W trakcie... 9 wykonany na 13
taskkill /f /im lightshot.exe
cls
echo W trakcie... 10 wykonany na 13
taskkill /f /im TeamWiever_Service.exe
cls
echo W trakcie... 11 wykonany na 13
taskkill /f /im opera.exe
cls
echo W trakcie... 12 wykonany na 13
taskkill /f /im java.exe
cls
echo W trakcie... 13 wykonany na 13
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
cls
echo Skrypt gotowy, mozesz teraz otworzyc FIVEM, będziesz mial mniej lagow!
echo ----------------------------------------------------------------------------------
echo DZIADEKBOMBA
echo ----------------------------------------------------------------------------------
timeout /t 5 /nobreak