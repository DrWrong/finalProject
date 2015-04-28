#!/bin/sh
export BASE_PATH=`pwd`
cd $BASE_PATH/src/github.com/DrWrong/finalProject_securityserver
./finalProject_securityserver&
cd $BASE_PATH/src/github.com/DrWrong/finalProject_weatherserver
./finalProject_weatherserver&
cd $BASE_PATH/src/github.com/DrWrong/finalProject_UI
./finalProject_UI&
