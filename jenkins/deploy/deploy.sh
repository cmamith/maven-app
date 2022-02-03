#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /Users/amcm/Desktop/DEVOPS-STUDY/AWs/4my-organization.pem /tmp/.auth ec2-user@3.89.88.102:/tmp/.auth
scp -i /Users/amcm/Desktop/DEVOPS-STUDY/AWs/4my-organization.pem ./jenkins/deploy/publish.sh ec2-user@3.89.88.102:/tmp/publish
scp -i /Users/amcm/Desktop/DEVOPS-STUDY/AWs/4my-organization.pem ./jenkins/deploy/publish.sh ec2-user@3.89.88.102 "/tmp/publish"
