# Use AdoptopenJDK as the base image
FROM adoptopenjdk:11-jre-hotspot
# Set the working directory in the container 
WORKDIR /adoptopenjdk

# Copy the JAR file into the container
COPY target/spring-boot-web.jar .

# Expose the port your application runs on (if applicable)
Expose 8080

# Define the command to run your application 
CMD ["java", ".jar", "spring-boot-web.jar"]
