FROM tomcat:8.0

# Remove default ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Add your WAR
COPY target/ekart.war /usr/local/tomcat/webapps/ekart.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

