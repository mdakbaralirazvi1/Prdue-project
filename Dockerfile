# Use the official Tomcat image from the Docker Hub
FROM tomcat

# Copy the WAR file to the webapps directory in Tomcat
COPY abc_tech.war /usr/local/tomcat/webapps/

# Expose the default HTTP port for Tomcat
EXPOSE 8080

# Run Tomcat in the foreground
CMD ["catalina.sh", "run"]

