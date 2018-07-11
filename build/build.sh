#!/bin/sh

echo "######################"
echo "*** Building image ***"
echo "######################"

cd build && docker-compose -f docker-compose-build.yml build --no-cache
