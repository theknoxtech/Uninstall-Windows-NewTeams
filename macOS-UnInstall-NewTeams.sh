#!/bin/bash

# Check for Teams app
if [ -d "/Applications/Microsoft Teams.app" ]; then

    echo "Quitting Teams"
    pkill -9 -f "Microsoft Teams"

    echo "Uninstalling Teams"
    sudo rm -rf "/Applications/Microsoft Teams.app"

    if [ ! -d "/Applications/Microsoft Teams.app" ]; then

      echo "SUCCESS: Teams has been uninstall"
    else
      echo "FAILURE: Teams has NOT been uninstalled"
    fi  

else
  echo "Teams was not found on the target Mac"
fi

