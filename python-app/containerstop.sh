#!/bin/bash
set -e

# Stop all running containers
docker stop $(docker ps -q) || echo "No running containers to stop"
