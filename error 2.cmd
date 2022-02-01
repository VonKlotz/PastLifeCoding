@echo off
set "dostuff=del "P:\1. PICKING\NGT\FILES\today\22.csv""
%dostuff% && goto shit
goto good

:shit 
echo shit
echo cmd.%dostuff%.failed.%date%.%time%>error.log
goto ext

:good
echo good
pause

:ext