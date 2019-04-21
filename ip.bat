@ECHO off
for /f "tokens=16" %%i in ('ipconfig ^|find /i "202"') do set ip=%%i
echo %ip%
echo %ip%>ip.txt