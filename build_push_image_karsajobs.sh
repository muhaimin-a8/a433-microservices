# buil docker image
docker build -t karsajobs:v1 .

# show all docker images locally
docker images

# format image name to push on ghcr.io
docker tag karsajobs:v1 ghcr.io/muhaimin-a8/karsajobs:latest

# login ghcr.io
# make sure that CR_PAT (access token(classic)) is exist
# export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u muhaimin-a8 --password-stdin

# push image to ghcr.io
docker push ghcr.io/muhaimin-a8/karsajobs:latest
