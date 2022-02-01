@ECHO OFF
title Pick All MONTH BY Mateusz Kocowicz 
color 4a
cls
set/p "pass=>password"

if NOT %pass%==002255 goto FAIL

cls
color a4
echo off
goto begin

:begin
echo Select a Month:
echo =============
echo -
echo 1) MONTH 1
echo 2) MONTH 2
echo 3) MONTH 3
echo 4) MONTH 4
echo 5) MONTH 5
echo 6) MONTH 6
echo 7) MONTH 7
echo 8) MONTH 8
echo 9) MONTH 9
echo 10) MONTH 10
echo 11) MONTH 11
echo 12) MONTH 12
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
if "%op%"=="8" goto op8
if "%op%"=="9" goto op9
if "%op%"=="10" goto op10
if "%op%"=="11" goto op11
if "%op%"=="12" goto op12

echo Please Pick an option:
goto begin


:op1
CLS
echo you picked option 1
DEL "P:\1. PICKING\NGT\FILES\Jan.csv"
for /r "P:\1. PICKING\NGT\FILES\Jan" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\Jan.csv"
goto GOOD

:op2
CLS
echo you picked option 2
DEL "P:\1. PICKING\NGT\FILES\feb.csv"
for /r "P:\1. PICKING\NGT\FILES\feb" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\feb.csv"
goto GOOD

:op3
CLS
echo you picked option 3
DEL "P:\1. PICKING\NGT\FILES\mar.csv"
for /r "P:\1. PICKING\NGT\FILES\march" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\mar.csv"
goto GOOD

:op4
CLS
echo you picked option 4
DEL "P:\1. PICKING\NGT\FILES\apr.csv"
for /r "P:\1. PICKING\NGT\FILES\apr" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\apr.csv"
goto GOOD

:op5
CLS
echo you picked option 5
DEL "P:\1. PICKING\NGT\FILES\MAY.csv"
for /r "P:\1. PICKING\NGT\FILES\MAY" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\MAY.csv"
goto GOOD

:op6
CLS
echo you picked option 6
DEL "P:\1. PICKING\NGT\FILES\JUN.csv"
for /r "P:\1. PICKING\NGT\FILES\JUN" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\JUN.csv"
goto GOOD

:op7
CLS
echo you picked option 7
DEL "P:\1. PICKING\NGT\FILES\JUL.csv"
for /r "P:\1. PICKING\NGT\FILES\JUL" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\JUL.csv"
goto GOOD

:op8
CLS
echo you picked option 8
DEL "P:\1. PICKING\NGT\FILES\AUG.csv"
for /r "P:\1. PICKING\NGT\FILES\AUG" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\AUG.csv"
goto GOOD

:op9
CLS
echo you picked option 9
DEL "P:\1. PICKING\NGT\FILES\SEP.csv"
for /r "P:\1. PICKING\NGT\FILES\SEP" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\SEP.csv"
goto GOOD

:op10
CLS
echo you picked option 10
DEL "P:\1. PICKING\NGT\FILES\OCT.csv"
for /r "P:\1. PICKING\NGT\FILES\OCT" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\OCT.csv"
goto GOOD

:op11
CLS
echo you picked option 11
DEL "P:\1. PICKING\NGT\FILES\NOV.csv"
for /r "P:\1. PICKING\NGT\FILES\NOV" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\NOV.csv"
goto GOOD

:op12
CLS
echo you picked option 12
DEL "P:\1. PICKING\NGT\FILES\DEC.csv"
for /r "P:\1. PICKING\NGT\FILES\DEC" %%a in (*.csv) do copy /y "%%a" "P:\1. PICKING\NGT\FILES\DEC.csv"
goto GOOD

:FAIL

CLS
color 4a
ECHO;
echo Invalid keyword
timeout /t 3 /nobreak
goto END

:GOOD

CLS
color a4
ECHO;
echo ALL DONE
timeout /t 1 /nobreak
goto END

:END
