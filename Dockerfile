# Use the official Tomcat image
FROM tomcat:9.0

# Copy your WAR file to Tomcat's webapps directory
COPY target/your-app.war /usr/local/tomcat/webapp/

# Expose the port
EXPOSE 8082

# Set environment variable for Tomcat
ENV CATALINA_OPTS="-Dserver.port=8082"
