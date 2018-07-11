#!/bin/sh

echo "######################"
echo "*** Packaging app ***"
echo "######################"

docker run --rm -v /root/.m2:/root/.m2 -v $PWD/build/simple-java-maven-app:/app -w /app maven:3-alpine "$@"
