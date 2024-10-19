##Shell Script to Build Docker Image n Push to Github Package Registry

## Step 1: build docker image
sudo docker build -t item-app:v1 .

echo "============================================================"
##check docker image in local
sudo docker images

##change local image's name to GCR format
sudo docker tag item-app:v1 ghcr.io/imamd1/item-app:v1

##login to GCR account
echo $PA_TOKEN | sudo docker login ghcr.io -u imamd1 --password-stdin

##Push to GCR
sudo docker push ghcr.io/imamd1/item-app:v1
