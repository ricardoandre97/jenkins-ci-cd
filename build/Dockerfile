FROM maven:3-alpine as builder

COPY simple-java-maven-app /app

WORKDIR /app

RUN ls /app &&  mvn -B -DskipTests clean package

FROM openjdk:8-jre-alpine

RUN mkdir /artifacts

COPY --from=builder /app/*.jar /artifacts/app.jar

CMD java -jar /artifacts/app.jar
