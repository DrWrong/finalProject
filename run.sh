#!/bin/sh
cd /var/www/finalProject/src/github.com/DrWrong/finalProject_securityserver
./finalProject_securityserver&
cd /var/www/finalProject/src/github.com/DrWrong/finalProject_weatherserver
./finalProject_weatherserver&
cd /var/www/finalProject/src/github.com/DrWrong/finalProject_UI
./finalProject_UI&
