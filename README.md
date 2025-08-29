# Splunk SIEM Setup

# Introduction

Splunk is a leading (SIEM) platform used to collect, index, and analyze machine data from diverse sources across an environment. As a SIEM, Splunk provides centralized visibility into security events, enables detection of suspicious activities, and supports incident response through powerful search, alerting, and dashboard capabilities.

# Objective

In this Splunk Lab, I will install Splunk from scratch and configure its static IP address within the same network topology. A comprehensive step-by-step guide to my process, which includes practical steps that will be useful for me to refer to in the future.

# Skills Learned

- Installing Splunk on a dedicated server.
- Configuring a static IP address to ensure it remains on the same network as the Active Directory domain controller and Windows endpoints.
- Preparing the instance to collect logs from various sources in the lab network.

# Technologies/Stacks

- Splunk Enterprise Platform
- Ubuntu Server (for Splunk server)
- Static IP Configuration
- Custom Indexing
- Forwarder Integration Ready

---

# Setting up Splunk server

![splunk-image1](https://github.com/user-attachments/assets/8c3d7f92-f28f-488d-bd21-c0436cce166e)
![splunk-image2](https://github.com/user-attachments/assets/d4c0e873-ebb7-4a02-b518-b4519eab1a64)

#

# Setting Static IP Address and Default Route:
  - Configured a static IP address for the Splunk server and defined a default route with the gateway 192.168.1.20. `sudo nano /etc/netplan/00-installer-config.yaml`

![static-netplan](https://github.com/user-attachments/assets/5bf0d4f5-8b54-4177-91f4-106e4fe9d63d)

Apply the changes: `sudo netplan apply`

![static-ipapply](https://github.com/user-attachments/assets/9708344f-b3f6-4824-88e2-9ca15908a167)
#

# Connecting the Web GUI with the Static IP

![splunk-web](https://github.com/user-attachments/assets/ad65e90f-6aba-492a-892e-2301d9772f2d)
#

# Lab Indexing Strategy

To ensure proper organization of collected telemetry within the homelab, a dedicated Splunk index will be created. This approach guarantees that all events ingested from the lab environment, including Active Directory logs, Sysmon telemetry, and Windows event logs, are stored in a specific location.

![homelab-detect](https://github.com/user-attachments/assets/21e5d67e-f961-49da-b982-e47e6ce76820)

---

# Conclusion

This lab successfully demonstrates the installation and initial configuration of Splunk Enterprise within the homelab network. By assigning a static IP, preparing the server for log ingestion, and defining a dedicated lab index, we ensure that all telemetry from Windows endpoints, Active Directory, Zeek & Surucata and Sysmon can be properly centralized and analyzed. This setup lays the foundation for building detection use cases, monitoring dashboards, and simulating real-world attack scenarios.
