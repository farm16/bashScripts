#!/bin/bash

# Replace these values with your own
APP_NAME="my-app"
APP_CENTER_TOKEN="your-app-center-token"
DEPLOYMENT_KEY="your-codepush-deployment-key"

# Build the app
react-native bundle --platform ios --entry-file index.js --dev false --bundle-output ios/main.jsbundle --assets-dest ios

# Deploy the iOS app to App Center using CodePush
appcenter codepush release-react -a $APP_NAME -d Production -t 1.0.0 --token $APP_CENTER_TOKEN --deployment-key $DEPLOYMENT_KEY --target-binary-version ">1.0.0" --mandatory

# Build the app
react-native bundle --platform android --entry-file index.js --dev false --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res

# Deploy the Android app to App Center using CodePush
appcenter codepush release-react -a $APP_NAME -d Production -t 1.0.0 --token $APP_CENTER_TOKEN --deployment-key $DEPLOYMENT_KEY --target-binary-version ">1.0.0" --mandatory
