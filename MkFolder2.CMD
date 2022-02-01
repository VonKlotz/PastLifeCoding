@ECHO OFF
cls
COLOR 0A
title Lock And Encode Folder By Mateusz Kocowicz

SET "ROK=%date:~6,4%"
CALL "MONTH.CMD"
SET HOURR=%date:~0,2%-%MNTH%
SET "DEST=P:\Operations\Hour Report\NGT\%ROK%\%HOURR%"
SET "MASDES=P:\Operations\Hour Report\NGT\MASTER"

if EXIST "%DEST%" goto EXIT
GOTO BEGIN

:BEGIN

MD "%DEST%"
COPY /V "%MASDES%\PRINTING + PICK & PACK.xlsx" "%DEST%\PRINTING + PICK & PACK.xlsx"
COPY /V "%MASDES%\RETAIL (WESTFIELD AND SELFRIDGES).xlsx" "%DEST%\RETAIL (WESTFIELD AND SELFRIDGES).xlsx"
COPY /V "%MASDES%\RETURNS & PR.xlsx" "%DEST%\RETURNS & PR.xlsx"
COPY /V "%MASDES%\STOCK CONTROL & INBOUND..xlsx" "%DEST%\MASTERSTOCK CONTROL & INBOUND..xlsx"
goto EXIT



:EXIT
ECHO DONE-%DEST%
timeout /t 10 /nobreak
start excel.exe /e "%DEST%\PRINTING + PICK & PACK.xlsx"
start excel.exe /e "P:\1. PICKING\NGT\PickUPH.xlsm"
start explorer.exe "P:\1. PICKING\NGT\FILES\%UPHD%\"

