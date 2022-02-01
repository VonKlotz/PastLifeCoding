@ECHO OFF
title DO MAGIC AND VERYFY FOR UPH by Mateusz Kocowicz
color 0A
set "CPATH=%~dp0"
SET "CDRIVE=%CPATH:~0,2%"
SET "BELL="
call :begin 2> log.log 2>&1
goto fin

:ext
exit /B


:begin
@echo Log For Update by Mateusz Kocowicz Created.  %date%   %time%
%CDRIVE%
CD %CPATH%
cls
del "P:\1. PICKING\NGT\FILES\TODAY\*.csv"
cls
@echo Procesing files COPY/MERGE AND VERYFYING
copy /v 22?.csv 22.csv
copy /v 22.csv "P:\1. PICKING\NGT\FILES\TODAY\10.csv"
copy /v 23?.csv 23.csv
copy /v 23.csv "P:\1. PICKING\NGT\FILES\TODAY\11.csv"
copy /v 00?.csv 00.csv
copy /v 00.csv "P:\1. PICKING\NGT\FILES\TODAY\00.csv"
copy /v 01?.csv 01.csv
copy /v 01.csv "P:\1. PICKING\NGT\FILES\TODAY\01.csv"
copy /v 02?.csv 02.csv
copy /v 02.csv "P:\1. PICKING\NGT\FILES\TODAY\02.csv"
copy /v 03?.csv 03.csv
copy /v 03.csv "P:\1. PICKING\NGT\FILES\TODAY\03.csv"
copy /v 04?.csv 04.csv
copy /v 04.csv "P:\1. PICKING\NGT\FILES\TODAY\04.csv"
copy /v 05?.csv 05.csv
copy /v 05.csv "P:\1. PICKING\NGT\FILES\TODAY\05.csv"
cls
@echo Procesing files Deleting Rubish
timeout /t 1 /nobreak
cls
@echo Procesing files Deleting Rubish
del ??a.csv
del ??b.csv
del ??c.csv
del ??d.csv
del ??e.csv
del ??f.csv
del ??g.csv
del ??h.csv
del ??i.csv
del ??j.csv
del ??k.csv
del ??l.csv
del ??m.csv
del ??n.csv
del ??o.csv
del ??p.csv
del ??q.csv
del ??r.csv
del ??s.csv
del ??t.csv
del ??u.csv
del ??v.csv
del ??w.csv
del ??x.csv
del ??y.csv
del ??z.csv
cls
@echo Procesing files MOVE TO DESTINATION
timeout /t 1 /nobreak
CLS
@echo Procesing files MOVE TO DESTINATION
P:
cd "P:\1. PICKING\NGT\FILES\TODAY\"
copy /v *.csv 22.csv
cls
@echo Procesing files Deleting Rubish Once More
del 10.csv
del 11.csv
del 00.csv
del 01.csv
del 02.csv
del 03.csv
del 04.csv
del 05.csv
goto ext

:fin
TITLE klocpl@gmail.com
cls
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo                                          FINISH %date%%time%
@echo                                                   THANK YOU!
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:
@echo:                                                                                   klocpl@gmail.com
@echo %BELL%
timeout /t 2 /nobreak
goto ext