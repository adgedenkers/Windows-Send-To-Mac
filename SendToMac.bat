@echo off
setlocal

REM ---------------------------------------------------------------------
REM Author: Your Name
REM Date: 2024-07-03
REM License: MIT License
REM Description: Batch script to copy files to a network folder on a Mac
REM ---------------------------------------------------------------------

REM Check if the argument is provided
if "%~1"=="" (
    echo No file specified.
    exit /b 1
)

REM Copy the file to the network folder
set DEST=\\saturn.local\dropoff
copy "%~1" "%DEST%"

REM Check if the copy was successful
if %errorlevel% equ 0 (
    echo File copied successfully.
) else (
    echo Error copying file.
)

endlocal
