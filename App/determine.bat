@ECHO OFF
tasklist|find /i "clash-win64.exe"
cls
if %errorlevel%==0 (
echo.&echo ��           clash ��������           ��
) else (echo.&echo ��           clash �Ѿ��ر�           ��)

