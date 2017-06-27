FROM debian:latest

RUN apt-get -y update && apt-get install -y openjdk-8-jre-headless openjdk-8-jdk maven git curl

WORKDIR ekholabs

RUN git clone https://github.com/ekholabs/configuration-service
WORKDIR configuration-service
RUN ./gradlew clean build

ENV CONFIG_SERVER_PORT=8082

EXPOSE $CONFIG_SERVER_PORT

ENTRYPOINT ["java"]
CMD ["-server", "-Xmx256M", "-jar", "build/libs/configuration-service-1.0-SNAPSHOT.jar"]