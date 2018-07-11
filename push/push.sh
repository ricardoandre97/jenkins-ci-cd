#!/bin/sh

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

REGISTRY="linuxfacilito.online:5043"
IMAGE="app"

echo "*** Logging in ***"
docker login -u ricardo -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
