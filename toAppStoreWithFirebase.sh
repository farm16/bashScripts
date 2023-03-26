#!/bin/bash

# Replace these values with your own
APP_NAME="my-app"
APP_FILE_PATH="./build/ios/archive/MyApp.xcarchive"
APP_DISTRIBUTION_GROUP="my-group"
APP_RELEASE_NOTES="Version 1.0.0 release"
APP_STORE_CONNECT_USERNAME="your-app-store-connect-username"
APP_STORE_CONNECT_PASSWORD="your-app-store-connect-password"
FIREBASE_TOKEN="your-firebase-token"

# Authenticate with Firebase
firebase login:ci --token "$FIREBASE_TOKEN"

# Set the Firebase project to use
firebase use --add your-firebase-project-id

# Upload the app to Firebase App Distribution
firebase appdistribution:distribute $APP_FILE_PATH --release-notes "$APP_RELEASE_NOTES" --app $APP_NAME --groups $APP_DISTRIBUTION_GROUP --token "$FIREBASE_TOKEN" --testers-file testers.txt --app-store-connect-api-key "$APP_STORE_CONNECT_USERNAME:$APP_STORE_CONNECT_PASSWORD"
