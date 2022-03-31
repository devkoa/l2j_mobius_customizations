@echo off
title Install DB Console

set user="userName"
set password="userPass"
set GAME_SERVER="l2jmobiush5"
set LOGIN_SERVER="l2jmobiush5"

mysql -u %user% -p%password% -e "CREATE DATABASE IF NOT EXISTS %GAME_SERVER%"
REM mysql -u %user% -p%password% -e "CREATE DATABASE IF NOT EXISTS %LOGIN_SERVER%"

for %%i in (sql\game\*.sql) do (
	mysql -u %user% -p%password% %GAME_SERVER% <%%i
	echo %%i
)

for %%f in (sql\login\*.sql) do (
	mysql -u %user% -p%password% %LOGIN_SERVER% <%%f
	echo %%f
)

pause
