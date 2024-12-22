@echo off
cd ..
cd ..
cd ..
::winget upgrade -h --id DevelopedMethodsLLC.playit
start ./playit/playit.exe

start ./html/http-server/Simple-Web-Server.exe

cd ./cloud/
::java -jar ./polocloud.jar
python start.py
cd ..