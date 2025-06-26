@echo off
title D: Drive Content Locker
setlocal

:: SET YOUR PASSWORD
set password=YourPasswordHere

:MENU
cls
echo =============================
echo     D: Drive Content Locker
echo =============================
echo 1. Lock all content in D:\
echo 2. Unlock content in D:\
echo 3. Exit
echo.
set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" goto LOCK
if "%choice%"=="2" goto UNLOCK
if "%choice%"=="3" exit
goto MENU

:LOCK
echo.
echo Locking all visible files and folders in D:\ ...
for /f "delims=" %%I in ('dir /b /a:D "D:\"') do (
    if /I not "%%I"=="$RECYCLE.BIN" (
        attrib +h +s "D:\%%I" /s /d
    )
)
echo Done locking.
pause
goto MENU

:UNLOCK
echo.
set /p "input=Enter password to unlock D:\: "
if "%input%"=="%password%" (
    echo Unlocking...
    for /f "delims=" %%I in ('dir /b /a:D "D:\"') do (
        if /I not "%%I"=="$RECYCLE.BIN" (
            attrib -h -s "D:\%%I" /s /d
        )
    )
    echo Done unlocking.
) else (
    echo Incorrect password!
)
pause
goto MENU
