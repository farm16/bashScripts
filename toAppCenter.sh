#!/bin/bash

# Replace these values with your own
APP_NAME="my-app"
APP_FILE_PATH="./build/app/outputs/apk/release/app-release.apk"
APP_CENTER_TOKEN="your-app-center-token"
DISTRIBUTION_GROUP="my-group"

# Upload Android app
appcenter distribute release \
  --app $APP_NAME/android \
  --file $APP_FILE_PATH \
  --token $APP_CENTER_TOKEN \
  --group $DISTRIBUTION_GROUP \
  --release-notes "Version 1.0.0 release"

# Upload iOS app
APP_FILE_PATH="./build/ios/archive/MyApp.xcarchive"
appcenter distribute release \
  --app $APP_NAME/ios \
  --file $APP_FILE_PATH \
  --token $APP_CENTER_TOKEN \
  --group $DISTRIBUTION_GROUP \
  --release-notes "Version 1.0.0 release"