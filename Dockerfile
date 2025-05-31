# build stage——
FROM maven:3.8.6-openjdk-8 AS builder
WORKDIR /app
COPY . /app
RUN mvn clean install

# final image
FROM tomcat:9.0
RUN apt-get update && apt-get install vim -y
COPY --from=builder /app/target/ekart.war /usr/local/tomcat/webapp
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
