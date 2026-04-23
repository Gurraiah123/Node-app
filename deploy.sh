#!/bin/bash

echo "Stopping old app..."
pm2 stop app || true
pm2 delete app || true

echo "Installing dependencies..."
npm install

echo "Starting app..."
pm2 start app.js --name app

pm2 save
