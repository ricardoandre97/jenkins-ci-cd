#!/bin/sh

echo "*** Building image"
cd build && docker-compose -f docker-compose-build.yml build --no-cache
