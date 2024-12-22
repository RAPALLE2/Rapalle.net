#!/bin/bash

# Navigate up three directories
cd ..
cd ..
cd ..

# (Commented out) Upgrade the package DevelopedMethodsLLC.playit using winget
# Note: winget is specific to Windows, no direct equivalent command here
# winget upgrade -h --id DevelopedMethodsLLC.playit

# Start playit.exe
./playit/playit.exe &

# Start Simple-Web-Server.exe
./html/http-server/Simple-Web-Server.exe &

# Navigate to the cloud directory
cd ./cloud/

# (Commented out) Run polocloud.jar using Java
# Note: Uncomment the following line if Java and polocloud.jar are available
# java -jar ./polocloud.jar

# Run start.py using Python
python start.py

# Navigate back to the previous directory
cd ..
