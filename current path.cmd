set "CPATH=%~dp0"
SET "CDRIVE=%CPATH:~0,2%"
%CDRIVE%
CD %CPATH%
ECHO %CDRIVE%
ECHO %CPATH%