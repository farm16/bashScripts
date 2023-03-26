#!/bin/bash

# Enter your GitHub username and access token
USERNAME=
TOKEN=

# List the repositories that you want to star and can add more !!!
REPOS=( 
    "date-fns/date-fns"
    "moment/luxon"
    "storybookjs/storybook"
)


# Loop through the repositories and star them
for REPO in "${REPOS[@]}"
do
    echo "Starring $REPO..."
    curl -X PUT -H "Authorization: token $TOKEN" "https://api.github.com/user/starred/$REPO"
done
