#!/bin/bash

. echo_functions.sh

echoG 'Good Morning Warren...'

# Update the repositories...
REPO="/Users/wfernandes/Dev/Symplified/IntelliJGit/symplified-main/"
echo "Update the repository"
cd "$REPO"                                      # I want the user to end up in the repo directory for this terminal
git pull
if [ "$?" -ne "0"]; then
  echoR "Git pull failed"
fi

# Open up browsers with list of my morning sites
BBC="http://bbc.co.uk/news"
TC="http://techcrunch.com"
GMAIL="http://gmail.com"
TED="http://ted.com"

SITES=( $BBC $TC $GMAIL $TED ) 

echo "Opening browser with sites..."
for site in "${SITES[@]}"
do
  open -a "Google Chrome" $site
  if ["$?" -ne "0" ]; then
    echoR "Could not open site $site"
  fi
done

# Open up required applications
INTELLIJ="/Applications/IntelliJ IDEA 12.app/Contents/MacOS/idea"
GITX="/Applications/GitX.app/Contents/MacOS/GitX"

APPS=( "$INTELLIJ" $GITX )                    # Using the quotes to resolve the whitespace in the INTELLIJ path

echo "Opening applications..."
for app in "${APPS[@]}"
do
  open "$app"                                   
  if [ "$?" -ne "0" ]; then
    echoR "Could not open application $a"
  fi
done

