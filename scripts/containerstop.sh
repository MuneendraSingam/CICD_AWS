#!/bin/bash
set -e
containerid='docker ps | awk -f " " '{print $1}''
docker rm -f $containerid
