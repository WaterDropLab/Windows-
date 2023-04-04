@echo off
COLOR f0
title 迷你工具·定时关机
echo 迷你工具·定时关机 [版本 1.0]
echo (c) 2020 小王实验室。保留所有权利。
echo.
echo	——————————————————————————————
echo			希望本工具做什么？（    ）
echo.
echo.
echo		A.设置自动关机			B.取消自动关机
echo.
echo	——————————————————————————————

:loop_start
set /p choice=现在选择：
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="A" goto set_start
if /i "%choice%"=="B" goto cancel_start
echo 操作无效，请重新输入
echo.
goto loop_start

:set_start
set /p t1=	多久后关机?（以分钟为单位，输入数字即可）
set /a t2=60
set /a result=%t1%*%t2%
shutdown -s -t %result%
echo.
echo	设置成功！系统将在%t1%分钟后关闭！
echo.
goto loop_start

:cancel_start
shutdown -a
echo.
echo	已取消自动关机！
echo.
goto loop_start