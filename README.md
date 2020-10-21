eureka-server

## Docker build

Execute at least once:

```
mvn clean package
```

Build the image

```
docker build --tag eureka-server:latest .
```

## Execution via Docker

Basic execution command:

```
docker run --name my-eureka-server -p 1111:1111 eureka-server 
```

Then check against the default url: ``http://localhost:1111``

If you can see the eureka server homepage, then everything is okay up to this point.






