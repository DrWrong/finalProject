#!/bin/sh
export GOPATH=`pwd`
cd $GOPATH/src/github.com/DrWrong/finalProject_securityserver
go build
echo "successfullly build securityserver"
cd $GOPATH/src/github.com/DrWrong/finalProject_weatherserver
go build
echo "successfully build weatherserver"
cd $GOPATH/src/github.com/DrWrong/finalProject_UI
go build
echo "successfully build ui server"
echo "build task have finish"
