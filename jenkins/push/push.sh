#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u sangram7749 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sangram7749/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sangram7749/$IMAGE:$BUILD_TAG
