# Use an official Tomcat base image
FROM tomcat:9.0-jdk11-openjdk

# Copy the .war file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/app.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
