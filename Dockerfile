FROM openjdk:8u151-jdk-alpine3.7
MAINTAINER Todd Lewis "toddelewis@gmail.com"

LABEL tomcat-version=8.5.29

RUN yum -y install tar
RUN curl -O http://apache.cs.utah.edu/tomcat/tomcat-8/v8.5.29/bin/apache-tomcat-8.5.29.tar.gz
RUN tar xzf apache-tomcat-8.5.29.tar.gz
RUN yum -y install apr
CMD /apache-tomcat-8.5.29/bin/catalina.sh run
EXPOSE 8080
