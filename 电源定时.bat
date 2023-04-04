@echo off
COLOR f0
title 迷你工具·电源定时
echo 迷你工具·电源定时 [版本 2.0]
echo (c) 2020 小王实验室。保留所有权利。
echo.
echo	————————————————————————————
echo			希望本工具做什么？（    ）
echo.
echo.
echo		A.设置自动关机		B.取消自动关机
echo.
echo		C.设置自动重启		D.取消自动重启
echo.
echo	————————————————————————————

:loop_start
set /p choice=现在选择：
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="A" goto guanji_start
if /i "%choice%"=="B" goto buguanji_start
if /i "%choice%"=="C" goto chongqi_start
if /i "%choice%"=="D" goto buchongqi_start
echo 操作无效，请重新输入
echo.
goto loop_start

:guanji_start
set /p t1=	多久后关机?（单位：分钟）
set /a t2=60
set /a result=%t1%*%t2%
shutdown -s -t %result%
echo.
echo	设置成功！系统将在%t1%分钟后关机！
echo.
goto loop_start

:buguanji_start
shutdown -a
echo.
echo	已取消自动关机！
echo.
goto loop_start

:chongqi_start
set /p t3=	多久后重启?（单位：分钟）
set /a t4=60
set /a result=%t3%*%t4%
shutdown -r -t %result%
echo.
echo	设置成功！系统将在%t1%分钟后重启！
echo.
goto loop_start

:buchongqi_start
shutdown -a
echo.
echo	已取消自动关机！
echo.
goto loop_start