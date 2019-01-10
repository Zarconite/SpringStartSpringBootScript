#!/bin/bash 

#Kill the old one
PID_LOCATION="PID"
OLD_PID=$(cat $PID_LOCATION)
kill -9 $OLD_PID

#Identify the Jar
JAR="$(ls ~/ | grep .jar)"

#Run the Jar
nohup java -jar ~/$JAR > ~/output.log &
echo $! >$PID_LOCATION
disown