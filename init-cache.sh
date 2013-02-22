#!/bin/bash
# Creates application cache dirs in /tmp/username
# Default cache dirs should be symlinked.
# Run it on startup.

# User's cache dir, chmod 700:
mkdir /tmp/$USER-app-cache
chmod go-rwx /tmp/$USER-app-cache

# for Google Chrome:
# ln -s /tmp/$USER-app-cache/google-chrome ~/.cache/google-chrome
mkdir /tmp/$USER-app-cache/google-chrome
chmod go-rwx /tmp/$USER-app-cache/google-chrome

