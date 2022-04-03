# hello-world-spring-boot

A sample application that uses Spring Boot to generate an executable jar.

## Running

```shell
mvn spring-boot:run
```

This will compile and run the Spring Boot application as a server,
listening to port 8080.

<kbd>Ctrl</kbd><kbd>C</kbd> to quit.

## Mappings

* `/` will return "Hello, World!" and the current time.
* `/actuator/health` will return a JSON response with the up/down status.

## Docker

```shell
docker build -t gotimer/spring-boot-hello-world .
```

This will create a Docker image tagged `gotimer/spring-boot-hello-world`.
