
## Step 1: build docker image
sudo docker build -t item-app:2 .

echo "============================================================"
##check docker image in local
sudo docker images

##change local image's name to GCR format
sudo docker tag item-app:2 ghcr.io/imamd1/item-app:2

##login to GCR account
echo $PA_TOKEN | docker login ghcr.io --username imamd1 --password-stdin

##Push to GCR
docker push ghcr.io/imamd1/item-app:2