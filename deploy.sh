#!/bin/bash

# Stop Tomcat before deploying
/usr/local/tomcat/tomcat/bin/shutdown.sh

# Ensure old deployment is removed
sudo rm -rf /usr/local/tomcat/tomcat/webapps/ProductManipulation*

# Move the new WAR file from CodeDeploy to Tomcat's webapps folder
sudo mv ProductManipulation.war /usr/local/tomcat/tomcat/webapps/

# Start Tomcat after deployment
/usr/local/tomcat/tomcat/bin/startup.sh

echo "Deployment completed successfully!"
