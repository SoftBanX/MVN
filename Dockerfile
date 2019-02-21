
FROM gcr.io/distroless/java
ARG JAR
COPY ${JAR} app.jar
CMD ["app.jar"]