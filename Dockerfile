FROM tomcat
MAINTAINER jhansi
RUN apt update
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY target/devops.war /usr/local/tomcat/webapps/
