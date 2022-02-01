@ECHO OFF
title DoMagic And Verification BY Mateusz Kocowicz 
color 0A
echo enter day in two digid format and will calculate -8 days till this date Put EMPTY FOR TODAY
set log="P:\1. PICKING\NGT\FILES\mateusz%date%.log"
set odd=0
set DD1=00
cls
echo Please Dont Do Mess
echo If You Dont Know What Are You Doing Close ME Or Press CTRL+C Twice
color 00
timeout /t 2 /nobreak
set/p "pass=>Enter The Password "
if NOT %pass%==002255 goto FAIL
cls
color 0A
set /p "DD1=>enter day EMPTY IS TODAY "
if %DD1%==00 goto GO1
goto GO2

:GO1
set dd=%date:~0,2%
GOTO BEGIN

:GO2
SET dd=%DD1%
GOTO BEGIN

:BEGIN

set mon=%date:~3,2%
set /a odd1=%dd%-1
set /a odd2=%dd%-2
set /a odd3=%dd%-3
set /a odd4=%dd%-4
set /a odd5=%dd%-5
set /a odd6=%dd%-6
set /a odd7=%dd%-7
set /a odd8=%dd%-8
md "P:\1. PICKING\NGT\FILES\today\tmp"
md "P:\1. PICKING\NGT\FILES\tmp"
del "P:\1. PICKING\NGT\FILES\today\tmp\tot.csv" /f /q
del "P:\1. PICKING\NGT\FILES\today\22.csv"/f /q
del "P:\1. PICKING\NGT\FILES\tmp\" /f /s /q
copy /v "P:\1. PICKING\NGT\FILES\%dd%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t0.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd1%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t1.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd2%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t2.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd3%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t3.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd4%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t4.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd5%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t5.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd6%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t6.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd7%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t7.csv"
copy /v "P:\1. PICKING\NGT\FILES\%odd8%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t81.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%dd%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t00.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd1%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t11.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd2%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t21.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd3%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t31.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd4%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t41.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd5%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t51.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd6%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t61.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd7%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t71.csv"
copy /v "P:\1. PICKING\NGT\FILES\0%odd8%-%mon%\*.csv" "P:\1. PICKING\NGT\FILES\tmp\t81.csv"
copy /v "P:\1. PICKING\NGT\FILES\tmp\*.csv" "P:\1. PICKING\NGT\FILES\today\tmp\tot.csv"
copy /v "P:\1. PICKING\NGT\FILES\today\tmp\tot.csv" "P:\1. PICKING\NGT\FILES\today\22.csv"
del "P:\1. PICKING\NGT\FILES\tmp\" /f /s /q

:FAIL

CLS
ECHO;
echo You Dont Know What Are You Doing
echo Just Stop
color 4a
echo You Will Damage Somthing
timeout /t 10 /nobreak