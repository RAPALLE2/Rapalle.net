@echo off
::winget upgrade -h --id DevelopedMethodsLLC.playit
start /min ./playit/playit.exe

start /min L:\Rapalle.net\html\start-http-server.bat

cd ./cloud/
java -jar ./polocloud.jar
cd ..