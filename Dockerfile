# Use an official Tomcat base image
FROM tomcat:9.0

# Copy your WAR file to the Tomcat webapps directory
COPY target/your-app.war /usr/local/tomcat/webapps/

# Expose the port
EXPOSE 8082

# Set the environment variable for Tomcat to listen on 8082
ENV CATALINA_OPTS="-Dserver.port=8082"
