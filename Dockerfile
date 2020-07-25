FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-docker.jar WebApp.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]