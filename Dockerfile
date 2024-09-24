# Use the official Tomcat image from the Docker Hub
FROM tomcat

# Copy the WAR file to the webapps directory in Tomcat
COPY abc_tech.war /usr/local/apache-tomcat-9.0.95/webapps/

# Update server.xml to change the port from 8080 to 8084
RUN sed -i 's/port="8080"/port="8084"/g' /usr/local/tomcat/conf/server.xml

# Expose the new HTTP port for Tomcat
EXPOSE 8084

# Run Tomcat in the foreground
CMD ["catalina.sh", "run"]
