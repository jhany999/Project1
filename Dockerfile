FROM openjdk:8
EXPOSE 8080
ADD target/devops.war devops.war
ENTRYPOINT ["java","-jar","/devops.war"]
