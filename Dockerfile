# Use official Tomcat runtime as a parent image
FROM tomcat:9.0.48-jdk11-openjdk-slim
# FROM tomcat:9.0.72 

# Copy the war file into the container
COPY . /usr/local/tomcat/webapps/

# Expose the port 8080 for the container
#EXPOSE 8080

# Start Tomcat server
#CMD ["catalina.sh", "run"]
