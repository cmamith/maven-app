#!/bin/bash

# COpy the new jar to the new build
cp -f java-app/target/*.jar jenkins/build/

echo "########"
echo "Building image"
echo "#########"

cd jenkins/build && docker compose -f docker-compose-build.yaml build --no-cache
