#!/bin/bash
# Splunk Installation Script

# Install Splunk
sudo dpkg -i splunk

# Verify installation
ls -la /opt | grep splunk

# Switch to Splunk user and setup
sudo -u splunk bash -c '
  cd /opt/splunk/bin
  ./splunk start --accept-license --answer-yes --no-prompt
  ./splunk enable boot-start -user splunk
'

# Show IP address for login
ip a
echo "Access Splunk at: http://<your-ip>:8000"
