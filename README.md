# Configuration Service

Spring Cloud Microservice used to centralise other services' configuration.

# Dependencies

* Eureka Service
  * This microservice dependes on the Eureka Service in order to register for service discovery. However,
    the Eureka Service does not need to be running before this one can be started.
  * You can find out how to run the Configuration Service here: [Eureka Service](https://github.com/ekholabs/eureka-service)

In a dependency order priority, the Configuration Service should be started before everything else.

# Pulling the Docker Image

* ```docker pull ekholabs/configuration-service```

# Running the Docker Container

* ```docker run -d -p 8082:8082 --link eureka-service --name=configuration-service ekholabs/configuration-service```
