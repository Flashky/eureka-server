# eureka-server

Customized Eureka server for personal purposes.

## Configuration properties

Before running the service, you will need to customize several properties or environment variables:

Property | Description | Default value
--|--|--
EUREKA_SERVER_USERNAME | Username to login at the Eureka server | ``admin`` **(*)**
EUREKA_SERVER_PASSWORD | Password to login at the Eureka server | ``admin`` **(*)**


***:** *It is highly recommended to change both default username and password.*

## Client side configuration

### Getting started

#### Dependencies

The minimum configuration requires adding the following to the ``pom.xml``:

Properties:

```xml
<spring-cloud.version>2021.0.4</spring-cloud.version>
```

Dependencies:

```xml
<dependency>
	<groupId>org.springframework.cloud</groupId>
	<artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
</dependency>
<dependency>
	<groupId>org.springframework.cloud</groupId>
	<artifactId>spring-cloud-dependencies</artifactId>
	<version>${spring-cloud.version}</version>
	<type>pom</type>
	<scope>import</scope>
</dependency>
```

#### Properties

The minimum configuration requires just adding the following properties at ``application.yml`:

```yml
eureka:
  instance:
    preferIpAddress: true
  client:
    serviceUrl:
      defaultZone: http://admin:amin@localhost:8761/eureka/
```

Specially ``eureka.client.serviceUrl.defaultZone`` must match the exact ``defaultZone`` from the server.