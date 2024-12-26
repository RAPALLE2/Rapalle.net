@echo off
cd ..
cd Rapalle.net

::winget upgrade -h --id DevelopedMethodsLLC.playit
start ./playit/playit.exe

start ./html/http-server/Simple-Web-Server.exe