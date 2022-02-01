@ECHO OFF
title Merge And Verification BY Mateusz Kocowicz 
color 0A
md "P:\1. PICKING\NGT\FILES\temp"
md "P:\1. PICKING\NGT\FILES\temp\output"
cls
echo Please Dont Do Mess
echo If You Dont Know What Are You Doing Close ME Or Press CTRL+C Twice
timeout /t 2 /nobreak
color 00
set/p "pass=>Enter The Password "

if NOT %pass%==002255 goto FAIL

cls
color 0A
goto begin

:begin

set/p "asd=>Month name 3 chars "


copy /v "P:\1. PICKING\NGT\FILES\temp\*.csv" "P:\1. PICKING\NGT\FILES\temp\output\%asd%.csv"
goto GOOD

:FAIL

CLS
ECHO;
echo You Dont Know What Are You Doing
echo Just Stop
color 4a
echo You Will Damage Somthing
timeout /t 10 /nobreak

goto END

:GOOD

CLS
color a4

ECHO;
echo ALL DONE
goto END

:END
