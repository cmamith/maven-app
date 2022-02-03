#!/bin/bash

echo "###########"
echo "testing the jar"
echo "###########"


docker run --rm  -v $PWD/java-app:/app -v /tmp/.m2/:/root/.m2/ -w /app maven:3.6-alpine "$@"
