# buil docker image
docker build -t ghcr.io/muhaimin-a8/shipping_service:latest .

# login ghcr.io
# make sure that CR_PAT (access token(classic)) is exist
# export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u muhaimin-a8 --password-stdin

# push image to ghcr.io
docker push ghcr.io/muhaimin-a8/shipping_service:latest