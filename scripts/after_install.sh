#!/bin/bash
EC2INSTANCEID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
EC2AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
sudo echo "<p>Instance Id: $EC2INSTANCEID</p>" >> /var/www/html/index.html
sudo echo "<p>Availability Zone: $EC2AZ</p>" >> /var/www/html/index.html
chmod 777 /var/www/html/index.html