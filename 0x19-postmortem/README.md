# Incident Report: ```The Nginx Configuration Duplication Saga```
## Issue Summary:
On October 2nd, 2023, from 9:05 AM to 10:10 AM (EAT), users were unable to access our website. During the incident, the server experienced an outage that lasted approximately one hour. The Nginx web server became unresponsive, resulting in a complete loss of service for all hosted web applications. This outage affected approximately 40% of our users.  
The root cause of the incident was the presence of duplicate configurations in the Nginx configuration file introduced when a script, designed to automate configuration updates, ran repeatedly without properly checking for existing configurations. The duplicates caused conflicts, leading to the server outage.

## Timeline:
* 9.05 AM (EAT): ```Issue Detected```  
The incident was identified through our monitoring system, which generated alerts due to the unavailability of the Nginx service.
* 9:15 AM (EAT): ```Server Investigation```  
Initially, there was a suspicion that the outage might be related to server resources, such as memory or CPU utilization. This led to investigations into server performance, which did not yield the root cause.
* 9:45 AM (EAT): ```Issue Escalated```  
The incident was escalated to the DevOps and Web Operations teams to coordinate resolution efforts.
* 10:10 AM (EAT): ```Resolution```  
Investigation revealed the presence of redundant configurations in the Nginx configuration file which were subsequently removed, and the Nginx service was restarted, restoring normal service.

## Root Cause:
The presence of duplicate configurations resulted from a script running repeatedly to update server configurations. This script did not adequately check for existing configurations, leading to the introduction of duplicates.

## Resolution:
To address the immediate issue, the redundant configurations were removed from the Nginx configuration file. To prevent similar incidents in the future, the script responsible for the duplicates will be enhanced to include comprehensive testing and verification of existing configurations before applying changes.

## Corrective and Preventative Measures:
### Improvement Areas: 
* Automation Testing: Enhance scripts and automation tools to include robust checks for existing configurations to prevent duplicates.
* Monitoring Enhancement: Refine our monitoring system to provide early alerts for configuration-related anomalies.
### Tasks to Address the Issue: 
* Modify the script responsible for configurations to include checks for existing settings.
* Conduct a comprehensive review of all scripts and tools responsible for server configurations to ensure they do not introduce duplicates.
* Enhance the monitoring system to detect configuration-related anomalies.
* Implement a post-change validation step to confirm that configurations have been applied correctly.

This postmortem report outlines the incident caused by duplicate Nginx configurations and the steps taken to resolve it. The focus now shifts to implementing the listed corrective and preventative measures to prevent similar incidents in the future.

Report Prepared by: [Paul Njuga](https://github.com/Paul-Njuga)   
Date of Report Preparation: 3/10/2023
