#!/bin/bash
for ((i=1;i<=200;i++)); 
do
# Target existing service’s routes
curl http://localhost:8080/ -A dd-test-scanner-log;
# Target non existing service’s routes
curl  http://localhost:8080/?page=toto -A dd-test-scanner-log;
done
