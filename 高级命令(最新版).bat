@echo off
COLOR f0
title ���㹤�ߡ��߼�����
echo ���㹤�ߡ��߼����� [�汾 3.0]
echo (c) 2020 С��ʵ���ҡ���������Ȩ����
echo.
:set
set /p a=ϣ���˹�����ʲô? �߼�����:[�����ļ�,�����ļ���,��ֹ����,�Զ���,����,����]
IF NOT "%a%"=="" SET choice=%choice:~0,1%
IF "%a%"=="�����ļ�" GOTO:del
IF "%a%"=="�����ļ���" GOTO:rd
IF "%a%"=="��ֹ����" GOTO:taskkill
IF "%a%"=="�Զ���" START "�Զ���" /i /max
IF "%a%"=="����" GOTO:help
IF "%a%"=="����" GOTO:about
echo.
echo ������Ч������������
echo.
GOTO:set

:del
set /p b=�ļ�·����:
echo.
del /f /q %b%
echo �����ɹ�!
echo.
GOTO:set

:rd
set /p c=�ļ���·����:
echo.
rd /s /q %c%
echo �����ɹ�!
echo.
GOTO:set

:taskkill
set /p d=��������:
echo.
taskkill /im /t /f %d%
echo.
GOTO:set

:help
echo.
echo.
echo                    ������ʾһ��һ�����뼴��,��ʹ�ù�������ִ�Сд;
echo.
echo                    �˰汾���㹤��û���κ�bug,�����������Ϊ��������!
echo.
echo.
GOTO:set

:about
echo.
echo.
echo                              ��������:����
echo.
echo                              ���ı�:����˶
echo.
echo.
GOTO:set