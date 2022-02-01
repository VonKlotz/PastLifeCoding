@echo off
set LOGFILE=batch.log
call :LOG > %LOGFILE%
exit /B

:LOG
[ your script goes here ]