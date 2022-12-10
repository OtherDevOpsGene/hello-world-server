FROM eclipse-temurin:17-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8080
HEALTHCHECK --start-period=30s --interval=30s --timeout=3s --retries=3 \
  CMD curl --silent --fail --request GET http://localhost:8080/actuator/health \
  | jq --exit-status -n 'inputs | if has("status") then .status=="UP" else false end' > /dev/null || exit 1
