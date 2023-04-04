@echo off
COLOR f0
title 迷你工具·高级命令
echo 迷你工具·高级命令 [版本 3.0]
echo (c) 2020 小程实验室。保留所有权利。
echo.
:set
set /p a=希望此工具做什么? 高级命令:[粉碎文件,粉碎文件夹,终止进程,自定义,帮助,关于]
IF NOT "%a%"=="" SET choice=%choice:~0,1%
IF "%a%"=="粉碎文件" GOTO:del
IF "%a%"=="粉碎文件夹" GOTO:rd
IF "%a%"=="终止进程" GOTO:taskkill
IF "%a%"=="自定义" START "自定义" /i /max
IF "%a%"=="帮助" GOTO:help
IF "%a%"=="关于" GOTO:about
echo.
echo 操作无效，请重新输入
echo.
GOTO:set

:del
set /p b=文件路径名:
echo.
del /f /q %b%
echo 操作成功!
echo.
GOTO:set

:rd
set /p c=文件夹路径名:
echo.
rd /s /q %c%
echo 操作成功!
echo.
GOTO:set

:taskkill
set /p d=进程名称:
echo.
taskkill /im /t /f %d%
echo.
GOTO:set

:help
echo.
echo.
echo                    根据提示一步一步输入即可,在使用过程中请分大小写;
echo.
echo                    此版本迷你工具没有任何bug,出现奇葩错误为正常现象!
echo.
echo.
GOTO:set

:about
echo.
echo.
echo                              初版作者:程旭
echo.
echo                              后版改编:王克硕
echo.
echo.
GOTO:set