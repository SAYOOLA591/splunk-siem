# Splunk Installation Guide

Follow these steps to install and configure Splunk:

Download Splunk for the Web

```
wget + splunk deb file
```

Uninstall Splunk
   ```bash
   sudo dpkg -i splunk file
```

Confirm the installation:
By default Splunk installs in /opt/splunk


Verify that the splunk user and group exist
```
ls -la
```
Switch to the Splunk user:
```
sudo -u splunk bash
cd bin
ls
```
Start Splunk:
```
./splunk start
```

Press Q, then Y to accept the license

Create your username and password (example: user xyz, password xyz)

Finally, run a command that anytime the system reboots, Splunk should always start

by navigating back to the binary{bin}

exit to leave from the user directory and run cd bin

then pwd to know the present working directory confirmation,  then run the final command

```
cd bin
sudo ./splunk enable boot-start -user splunk
```

Get your IP address:
```
ip a
```
Access Splunk at: http://splunk:8000





