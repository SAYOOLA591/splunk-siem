#!/bin/bash
# Splunk Installation Script

# Step 1: Install Splunk
sudo dpkg -i splunk

# Step 2: Verify installation
ls -la /opt | grep splunk

# Step 3: Switch to Splunk user and setup
sudo -u splunk bash -c '
  cd /opt/splunk/bin
  ./splunk start --accept-license --answer-yes --no-prompt
  ./splunk enable boot-start -user splunk
'

# Step 4: Show IP address for login
ip a
echo "Access Splunk at: http://<your-ip>:8000"
