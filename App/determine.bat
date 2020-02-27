@ECHO OFF
tasklist|find /i "clash-win64.exe"
cls
if %errorlevel%==0 (
echo.&echo ├           clash 正在运行           ┤
) else (echo.&echo ├           clash 已经关闭           ┤)

