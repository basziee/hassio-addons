#!/bin/bash

# Copy over the xbox component
mkdir -p /root/.ssh
cp /config/ssh/adb-addon/private/* /root/.ssh

# # Persistent tokens on reboot
# mkdir -p /root/.ssh
# cp /config/ssh/adb-addon/private/* /root/.ssh

# Run the server
#service ssh start