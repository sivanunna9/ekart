FROM tomcat:7.0
MAINTAINER KISHORE@test.com
RUN apt-get update
RUN apt-get install -y vim
ADD target/ekart.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash