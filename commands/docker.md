# show images
docker images

# show containers running
docker ps

# stop container
docker stop [container-id]

# build a image
docker build -t [image-name] .

# running a container
docker run -d -p 8080:3000 [image-id]