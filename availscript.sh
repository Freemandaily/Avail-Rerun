#!/bin/bash

COMMAND = 'python availRun.py'

while true; do
	echo "Starting Avail Node"
    $COMMAND
	
    PID=$!
    
    wait $PID
    EXIT_STATUS=$?
    
    if [EXIT_STATUS -eq 0]; then
    		echo "Avail node Exited Successfully. Restarting......"
	else
    		echo "Avail Node Stopped Unexpectedly. Restarting....."
    fi
    #
    sleep 20
done
