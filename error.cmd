@echo on
call :begin 2> log.log
exit /B
:begin

set "dostuff=del "P:\1. PICKING\NGT\FILES\today\22.csv""
%dostuff% && echo "pass->" (%dostuff%) %date% %time% >error.log

goto good

:shit 
echo shit
echo "failed->" (%dostuff%) %date% %time% >1bad.log
goto exit

:good
echo "pass->" (%dostuff%) %date% %time% >1good.log
echo good


goto exit

:exit