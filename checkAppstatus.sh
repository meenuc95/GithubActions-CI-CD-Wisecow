#!/bin/bash

# Application url
APP_URL="https://www.google.com/"

# Check the application status
response=$(curl --silent --head $APP_URL | awk '/^HTTP/{print $2}')

# Verify the HTTP status code
if [ "$response" -eq 200 ]; then
    echo "Application is up. HTTP Status Code: $response"
else
    echo "Application is down. HTTP Status Code: $response"
fi
