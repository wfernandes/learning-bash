#!/bin/bash

. echo_functions.sh

echoG 'Good Morning Warren...'

# Update the repositories...
REPO="/Users/wfernandes/Dev/Symplified/IntelliJGit/symplified-main/"
echo "Update the repository"
cd "$REPO"
git pull


