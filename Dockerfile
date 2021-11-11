# 该镜像需要依赖的基础镜像
FROM openjdk:8u171-jre-slim

#WORKDIR /workspace
#COPY pom.xml /workspace
#COPY src /workspace/src

# 将当前目录下的jar包复制到docker容器的/目录下
#ADD target/demo.jar /app/demo.jar

COPY --from=builder /target/demo-*.jar demo.jar

# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar","demo.jar"]