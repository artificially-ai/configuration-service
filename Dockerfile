FROM debian:latest

RUN apt-get -y update && apt-get install -y openjdk-8-jre-headless openjdk-8-jdk maven git curl

COPY build/libs/configuration-service-1.0-SNAPSHOT.jar /ekholabs/configuration-service.jar

WORKDIR ekholabs

ENV CONFIG_SERVER_PORT=8082
ENV EUREKA_ADVERTISED_HOST_NAME=eureka-service
EXPOSE $CONFIG_SERVER_PORT

ENTRYPOINT ["java"]
CMD ["-server", "-Xmx256M", "-jar", "configuration-service.jar"]