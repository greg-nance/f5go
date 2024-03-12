#!/bin/bash

sudo launchctl unload /Library/LaunchDaemons/com.f5.go.plist
sudo launchctl load -w /Library/LaunchDaemons/com.f5.go.plist
