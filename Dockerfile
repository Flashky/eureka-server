FROM openjdk:11-jre-slim

# copy application JAR
COPY target/eureka-server-*.jar /app/eureka-server.jar

# Default environment variables
ENV EUREKA_SERVER_USERNAME "admin"
ENV EUREKA_SERVER_PASSWORD "admin"

# Application entrypoint
CMD ["java", "-jar", "/app/eureka-server.jar"]