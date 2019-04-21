@ECHO off
for /f "tokens=16" %%i in ('ipconfig ^|find /i "202"') do set ip=%%i
echo %ip%
set "web=https://ipv4.cloudns.net/api/dynamicURL/?q=MjIwMTg4NDoxODI3Mzg1MDY6OTg0ZjE3NzBkYTI3YjYwODU2M2YyMmYwM2JlYjE1OGE5NGMyYjM2ZmU3ODg3NjViYzE2ZmZiZjk3OTE0MTY3Mg&ip="
set "ww=%web%%ip%"
start %ww%
pause>nul
exit