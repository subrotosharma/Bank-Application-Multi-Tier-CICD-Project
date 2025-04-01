# Use lightweight Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Create and set the working directory
ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copy the jar file to the container
# This assumes your .jar file is generated in the 'target/' folder
COPY target/*.jar app.jar

# Expose the application's port
EXPOSE 8080

# Run the JAR
CMD ["java", "-jar", "app.jar"]
