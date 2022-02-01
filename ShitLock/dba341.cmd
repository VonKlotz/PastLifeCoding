@ECHO OFF
CLS
COLOR 0A
title Lock And Encode Folder By Mateusz Kocowicz

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002CLAUDIU}" goto UNLOCK

if NOT EXIST "secured" goto MDLOCKER


:CONFI

color a
echo Do You Know The Password
echo Are you sure you want to Lock the secured(Y/N)

set /p "cho=>"

if %cho%==Y goto LOCK

if %cho%==y goto LOCK

if %cho%==n goto End

if %cho%==N goto End

echo Invalid choice
goto CONFI

:LOCK
ren secured "Control Panel.{21EC2020-3AEA-1069-A2DD-08002CLAUDIU}"

attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002CLAUDIU}"
echo secured locked
goto End

:UNLOCK
echo put in the key to Unlock the lock
set passi=<"Control Panel.{21EC2020-3AEA-1069-A2DD-08002CLAUDIU}\014a.t"
color 00
set /p "pass=>password "

if NOT %pass%==%passi% goto fail

color a
cls
attrib -h -s -r -i "Control Panel.{21EC2020-3AEA-1069-A2DD-08002CLAUDIU}"

ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002CLAUDIU}" secured


CLS
echo secured Unlocked

goto CHAN



:CHAN

echo WHAT TO DO NOW
echo 1) EXIT
echo 4) Encrypt Folder
echo 5) Decrypt Folder
echo 7) Wipe Folder Data After Encrypting
echo 9) CHANGE PASSWORD
set /p op=Type option:
if "%op%"=="1" goto End
if "%op%"=="9" goto NPASS
if "%op%"=="5" goto De
if "%op%"=="4" goto En
if "%op%"=="7" goto Wi

echo Please Pick an option:

CLS

goto CHAN

:NPASS
SET /P PASSA="ENTER NEW PASSWORD "
SET /P PASSU="CONFIRM NEW PASSWORD "

if NOT %PASSA%==%PASSU% goto NPASS

attrib -h -s "secured\014a.t"
del "secured\014a.t"
echo %PASSU%>"secured\014a.t"
attrib +h +s "secured\014a.t"
echo DONE THANK YOU
goto End

:FAIL

color 4a
echo Invalid keyword
goto UNLOCK

:En

cd secured
cipher /e
cd..
goto CHAN

:De
cd secured
cipher /d
cd..
goto CHAN

:Wi
cd secured
cipher /w
cd..
goto CHAN

:MDLOCKER
md Secured
echo DSF983BKA2>"secured\014a.t"
CLS
attrib +h +s   "secured\014a.t"
CLS
goto LOCK


:End
cls