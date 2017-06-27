# Configuration Service

Spring Cloud Microservice used to centralise other services' configuration.

# Dependencies

This microservice depends on the Eureka Service in order to register for service discovery. However, the Eureka Service does not need
to be running before this one can be started.
In a dependency priority, the Configuration Service should be started before everything else.

You can find out how to run the Configuration Service here: [Eureka Service](https://github.com/ekholabs/eureka-service)

# Pulling the Docker Image

* ```docker pull ekholabs/configuration-service```

# Running the Docker Container

* ```docker run -d -p 8082:8082 --link eureka-service --name=configuration-service ekholabs/configuration-service```
