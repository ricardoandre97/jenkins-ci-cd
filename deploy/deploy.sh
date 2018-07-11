#!/bin/sh

#  Get current vars
echo $IMAGE > /tmp/.auth
echo $PASS >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
scp -i /opt/key /tmp/.auth centos@linuxfacilito.online:~/.auth
ssh -i /opt/key centos@linuxfacilito.online '~/publish'
