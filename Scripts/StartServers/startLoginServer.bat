@echo off
title Login Server Console

:start
echo Starting l2J Login Server.
echo.

java -Djava.awt.headless=true -server -Dfile.encoding=UTF-8 -Xms128m -Xmx256m -jar ../libs/LoginServer.jar

if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end

:restart
echo.
echo Login Server Restarted.
echo.
goto start

:error
echo.
echo Login Server terminated abnormally!
echo.

:end
echo.
echo Login Server Terminated.
echo.
pause