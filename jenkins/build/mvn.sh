#!/bin/bash

echo "###########"
echo "build the jar"
echo "###########"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -v $WORKSPACE/java-app:/app -v /tmp/.m2/:/root/.m2/ -w /app maven:3.6-alpine "$@"
