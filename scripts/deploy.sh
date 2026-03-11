#!/bin/bash

echo "Pull latest changes..."
git pull origin main

echo "Stopping containers..."
docker compose -f docker-compose.prod.yml down

echo "Building containers..."
docker compose -f docker-compose.prod.yml up -d --build

echo "Running migrations..."
docker compose -f docker-compose.prod.yml exec app php artisan migrate --force

echo "Clearing cache..."
docker compose -f docker-compose.prod.yml exec app php artisan config:cache

echo "Deploy finished"