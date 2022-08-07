FROM gcr.io/distroless/java:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/main.jar
WORKDIR /app
CMD ["main.jar"]

EXPOSE 8080