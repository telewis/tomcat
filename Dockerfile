# Version: 0.0.2
FROM toddelewis/java
MAINTAINER Todd Lewis "toddelewis@gmail.com"
RUN yum -y install tar
RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
RUN tar xzf apache-tomcat-7.0.55.tar.gz
#ENTRYPOINT ["/apache-tomcat-7.0.55/bin/startup.sh"]
CMD /apache-tomcat-7.0.55/bin/startup.sh && tail -f /apache-tomcat-7.0.55/logs/catalina.out
EXPOSE 8080
