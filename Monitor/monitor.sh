#!/bin/bash

# Create the virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

pip install flask psutil flask-cors
pip install influxdb-client

# Run the monitor.py script
/usr/bin/python3 /home/rapalle/Desktop/monitor.py
