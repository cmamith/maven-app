#!/bin/bash


echo "###########"
echo "PUSH IMAGE"
echo "##########"

IMAGE="maven-project"

echo '** Loggin in ***'
docker login -u amithlabsdocker -p $PASS
echo '*** Tagging image ***'
docker tag $IMAGE:$BUILD_TAG amithlabsdocker/$IMAGE:$BUILD_TAG
echo '***push image***'
docker push amithlabsdocker/$IMAGE:$BUILD_TAG
