# 该镜像需要依赖的基础镜像
FROM openjdk:8u171-jre-slim

RUN mkdir /app

COPY /target/demo*.jar /app/demo.jar

WORKDIR /app

CMD "java" "-jar" "demo.jar"