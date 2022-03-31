@echo off
title Game Server Console

:start
echo Starting l2J Game Server.
echo.

java -Djava.awt.headless=true -server -Dfile.encoding=UTF-8 -Djava.util.logging.manager=org.l2jmobius.log.ServerLogManager -Xmx4g -Xms2g -jar ../libs/GameServer.jar

if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end

:restart
echo.
echo Game Server Restarted.
echo.
goto start

:error
echo.
echo Game Server Terminated Abnormally!
echo.

:end
echo.
echo Game Server Terminated.
echo.
pause