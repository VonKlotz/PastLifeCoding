@ECHO OFF
cls
COLOR 0A
title Lock And Encode Folder By Mateusz Kocowicz

SET HOURR=%date:~0,2%-%date:~3,2%-%date:~6,4%
set UPHD=%date:~0,2%-%date:~3,2%

if EXIST "E:\OPERATIONS\HOUR REPORT\NGT\FILES 2018\%HOURR%" goto UPH
MD "E:\OPERATIONS\HOUR REPORT\NGT\FILES 2018\%HOURR%"
COPY /V "W:\Operations\Hour Report\NGT\MASTER\PRINTING + PICK & PACK.xlsx" "W:\Operations\Hour Report\NGT\2018\04-APRIL\PRINTING + PICK & PACK.xlsx"
COPY /V "W:\Operations\Hour Report\NGT\MASTER\RETAIL (WESTFIELD AND SELFRIDGES).xlsx" "W:\Operations\Hour Report\NGT\2018\04-APRIL\RETAIL (WESTFIELD AND SELFRIDGES).xlsx"
COPY /V "W:\Operations\Hour Report\NGT\MASTER\RETURNS & PR.xlsx" "W:\Operations\Hour Report\NGT\2018\04-APRIL\RETURNS & PR.xlsx"
COPY /V ""W:\Operations\Hour Report\NGT\MASTERSTOCK CONTROL & INBOUND..xlsx" "W:\Operations\Hour Report\NGT\2018\04-APRIL\MASTERSTOCK CONTROL & INBOUND..xlsx"
goto uph

:UPH
if EXIST "P:\1. PICKING\NGT\FILES\%UPHD%" goto EXIT
MD "P:\1. PICKING\NGT\FILES\%UPHD%"
COPY /V "P:\1. PICKING\NGT\FILES\MergeCSV.CMD" "P:\1. PICKING\NGT\FILES\%UPHD%\MergeCSV.CMD"
goto exit

:EXIT
cls
ECHO DONE-%HOURR%
start excel.exe /e "E:\OPERATIONS\HOUR REPORT\NGT\FILES 2018\%HOURR%\02.xlsx"
start excel.exe /e "P:\1. PICKING\NGT\PickUPH.xlsm"
start explorer.exe "P:\1. PICKING\NGT\FILES\%UPHD%\"

