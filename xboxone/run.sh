#!/bin/bash

# Copy over the xbox component
mkdir -p /config/components/xboxone
cp -f xboxone.py /config/components/xboxone/media_player.py
cp -f __init__.py /config/components/xboxone/__init__.py

# Persistent tokens on reboot
touch /config/.xbox-token.json
mkdir -p /root/.local/share/xbox/
ln -s /config/.xbox-token.json /root/.local/share/xbox/tokens.json


# Run the server
xbox-rest-server
