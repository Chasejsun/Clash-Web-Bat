@echo off &title ָ�������ļ�����clash
::CODER BY pcysanji 2020-02-26
mode con cols=44 lines=24
color f1

::���û�������
SET PATH="%~dp0";"%~dp0App";%PATH%
CD /D %~DP0
taskkill /IM clash-win64.exe >NUL 2>NUL
:start
echo.&echo.
echo -------------------------------------
echo.
set /p CONFIG=��������Ҫ�����������ļ���(������׺��)���س�:

::����vbs����clash����
echo CreateObject("WScript.Shell").Run "clash-win64 -d .\Profile -f .\Profile\%CONFIG%.yaml",0 >.\App\startclash.vbs
wscript ".\App\startclash.vbs" 
start http://127.0.0.1:9090/ui/#/proxies &cls
msg %username% /time:10s clash�����ɹ��������ļ���Ϊ%CONFIG%.yaml��
call Clash-Web-Bat.CMD