FROM openjdk:8-jre-alpine

# copy application JAR
COPY target/eureka-server-*.jar /app/eureka-server.jar

EXPOSE 1111

# specify default command
CMD ["java", "-jar", "/app/eureka-server.jar"]