# show images
docker images

# show containers running
docker ps

# list only stopped containers
docker ps -f "status=exited"

# stop container
docker stop [container-id]

# build a image
docker build -t [image-name] .

# running a container
docker run -d -p 8080:3000 [image-id]

# remove image
docker rmi <image_id>

# remove image
docker rm <container_id>

# stop containers:
docker-compose down

# delete all containers:
docker rm -f $(docker ps -a -q)

# delete all volumes:
docker volume rm $(docker volume ls -q)

# delete all images:
docker rmi -f $(docker images -aq)

# restart the containers:
docker-compose up -d
