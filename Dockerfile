FROM openjdk:21-jdk-slim
ARG EXPOSED_PORT=8080
COPY ./target/*.jar /app.jar
EXPOSE ${EXPOSED_PORT}
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]