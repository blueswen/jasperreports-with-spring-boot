FROM maven:3.6.3-openjdk-8 as builder
WORKDIR /workspace
COPY . .
RUN  unset MAVEN_CONFIG && ./mvnw package

FROM openjdk:8-jdk-buster
WORKDIR /app
COPY --from=builder /workspace/target/jasperreports-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
