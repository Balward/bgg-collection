#!/bin/bash

set -e

echo "Starting BGG Collection update..."

# Change to the application directory
cd /mnt/user/appdata/bgg-collection

echo "Pulling latest changes from GitHub..."
git pull origin master

echo "Stopping current containers..."
docker-compose down

echo "Building and starting containers..."
docker-compose up -d --build

echo "Update complete!"
echo "BGG Collection has been updated and restarted."