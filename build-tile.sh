#!/bin/sh

mkdir -p resources

DIR="$DIR map-server"
DIR="$DIR map-server-service-broker"

for d in $DIR;do
    mvn clean package -f $d -DskipTests=true
    mv $d/target/*.jar resources/$d.jar
done


tile build