#!/bin/sh
 ps -ef|grep finalProject|grep -v grep|cut -c 9-15|xargs kill -9
