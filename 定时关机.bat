@echo off
COLOR f0
title ���㹤�ߡ���ʱ�ػ�
echo ���㹤�ߡ���ʱ�ػ� [�汾 1.0]
echo (c) 2020 С��ʵ���ҡ���������Ȩ����
echo.
echo	������������������������������������������������������������
echo			ϣ����������ʲô����    ��
echo.
echo.
echo		A.�����Զ��ػ�			B.ȡ���Զ��ػ�
echo.
echo	������������������������������������������������������������

:loop_start
set /p choice=����ѡ��
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="A" goto set_start
if /i "%choice%"=="B" goto cancel_start
echo ������Ч������������
echo.
goto loop_start

:set_start
set /p t1=	��ú�ػ�?���Է���Ϊ��λ���������ּ��ɣ�
set /a t2=60
set /a result=%t1%*%t2%
shutdown -s -t %result%
echo.
echo	���óɹ���ϵͳ����%t1%���Ӻ�رգ�
echo.
goto loop_start

:cancel_start
shutdown -a
echo.
echo	��ȡ���Զ��ػ���
echo.
goto loop_start