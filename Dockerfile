# Use the official OpenJDK 17 as a base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file from the target directory
COPY target/demo-app-1.0-SNAPSHOT.jar demo-app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "demo-app.jar"]

