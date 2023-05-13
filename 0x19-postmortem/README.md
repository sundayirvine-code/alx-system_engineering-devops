Issue Summary:
Duration of outage: May 9, 2023, from 2:00 PM to 6:00 PM EAT  
Impact: Users were unable to access the shopping cart and checkout pages on our e-commerce website, resulting in a 50% drop in sales during the outage.  

Root cause: The outage was caused by a misconfiguration in the load balancer that resulted in an excessive number of connections to the checkout servers, causing them to crash.  

Timeline:  
2:00 PM - The issue was detected when the monitoring system alerted the on-call engineer of high server load on the checkout servers.  
2:05 PM - The engineer investigated the issue and found that the checkout servers were receiving an abnormally high number of connections.  
2:10 PM - The engineer assumed that the issue was caused by a DDoS attack and began investigating traffic logs to find the source of the traffic.  
2:30 PM - After analyzing the traffic logs, the engineer discovered that the issue was not caused by a DDoS attack, but by a misconfiguration in the load balancer that caused it to send an excessive number of connections to the checkout servers.  
2:45 PM - The issue was escalated to the infrastructure team, who began working on a fix for the load balancer configuration.  
4:00 PM - The infrastructure team discovered that the load balancer configuration was causing an issue with the SSL termination, which was preventing the checkout servers from processing the connections.  
4:30 PM - The SSL termination issue was resolved, and the load balancer configuration was corrected.    
5:00 PM - The checkout servers were brought back online, and the issue was resolved.  

Root cause and resolution:  
The root cause of the issue was a misconfiguration in the load balancer that resulted in an excessive number of connections to the checkout servers. The load balancer configuration was corrected, and the SSL termination issue was resolved, allowing the checkout servers to process connections normally.

Corrective and preventative measures:  
To prevent similar issues from occurring in the future, the following corrective and preventative measures will be taken:  

Implement more thorough load testing before deploying changes to the load balancer.
Improve monitoring and alerting for SSL termination issues.  
Conduct a review of the current load balancer configuration to ensure that it is optimized for the current traffic patterns on the website.  
Develop and implement a disaster recovery plan to ensure that critical systems can be quickly restored in the event of an outage.