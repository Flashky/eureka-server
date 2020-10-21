eureka-server

## Docker build

**Note:** *These steps are only needed if you want to manually build your own image.*

Execute the following commands to generate your own image:

```sh
# Build the java project
mvn clean package 

# Build the docker image
docker build --tag eureka-server:latest .
```


Done! You can run your your container now.


## Run via Docker

Basic execution command:

```
docker run --name my-eureka-server -p 1111:1111 eureka-server 
```

Then check against the default url: ``http://localhost:1111``

If you can see the eureka server homepage, then everything is okay up to this point.






