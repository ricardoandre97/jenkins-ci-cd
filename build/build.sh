#!/bin/sh

docker run --rm -v /root/.m2:/root/.m2 -v $PWD/simple-java-maven-app:/app -w /app maven:3-alpine "$@"
