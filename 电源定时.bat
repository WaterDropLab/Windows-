@echo off
COLOR f0
title ���㹤�ߡ���Դ��ʱ
echo ���㹤�ߡ���Դ��ʱ [�汾 2.0]
echo (c) 2020 С��ʵ���ҡ���������Ȩ����
echo.
echo	��������������������������������������������������������
echo			ϣ����������ʲô����    ��
echo.
echo.
echo		A.�����Զ��ػ�		B.ȡ���Զ��ػ�
echo.
echo		C.�����Զ�����		D.ȡ���Զ�����
echo.
echo	��������������������������������������������������������

:loop_start
set /p choice=����ѡ��
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="A" goto guanji_start
if /i "%choice%"=="B" goto buguanji_start
if /i "%choice%"=="C" goto chongqi_start
if /i "%choice%"=="D" goto buchongqi_start
echo ������Ч������������
echo.
goto loop_start

:guanji_start
set /p t1=	��ú�ػ�?����λ�����ӣ�
set /a t2=60
set /a result=%t1%*%t2%
shutdown -s -t %result%
echo.
echo	���óɹ���ϵͳ����%t1%���Ӻ�ػ���
echo.
goto loop_start

:buguanji_start
shutdown -a
echo.
echo	��ȡ���Զ��ػ���
echo.
goto loop_start

:chongqi_start
set /p t3=	��ú�����?����λ�����ӣ�
set /a t4=60
set /a result=%t3%*%t4%
shutdown -r -t %result%
echo.
echo	���óɹ���ϵͳ����%t1%���Ӻ�������
echo.
goto loop_start

:buchongqi_start
shutdown -a
echo.
echo	��ȡ���Զ��ػ���
echo.
goto loop_start