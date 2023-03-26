#!/bin/bash

# Replace these values with your own
APP_NAME="my-app"
APP_FILE_PATH="./app/build/outputs/apk/release/app-release.apk"
APP_VERSION_CODE="100"
APP_TRACK="internal"

# Authenticate with Firebase
firebase login

# Set the Firebase project to use
firebase use --add your-firebase-project-id

# Upload the app to Firebase App Distribution
firebase appdistribution:distribute $APP_FILE_PATH --release-notes "Version 1.0.0 release" --app $APP_NAME --groups $APP_TRACK --token "$FIREBASE_TOKEN" --testers-file testers.txt --version-code $APP_VERSION_CODE
