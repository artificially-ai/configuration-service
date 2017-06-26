FROM debian:latest

RUN apt-get -y update && apt-get install -y openjdk-8-jre-headless openjdk-8-jdk maven git

WORKDIR ekholabs

RUN git clone https://github.com/ekholabs/configuration-service
WORKDIR configuration-service
RUN ./gradlew clean build

EXPOSE 80

ENTRYPOINT ["java"]
CMD ["-server", "-Xmx256M", "-jar", "build/libs/configuration-service-1.0-SNAPSHOT.jar"]