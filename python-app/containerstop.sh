#!/bin/bash
set -e




# Get IDs of all running Docker containers
container_ids=$(docker ps -q)

# Check if there are any running containers
if [ -z "$container_ids" ]; then
  echo "No running containers to stop."
  exit 0
fi

# Stop and remove each container
for container_id in $container_ids; do
  echo "Stopping container: $container_id"
  docker stop $container_id

  echo "Removing container: $container_id"
  docker rm $container_id
done

echo "All running containers stopped and removed."
