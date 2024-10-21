##Shell Script to Build Image n Push to Github Package Registry

## Step 1: build karsajobs image
sudo docker build -t ghcr.io/imamd1/shipping-service:2 .

echo "============================================="
##check docker image in local
sudo docker images

##login to GCR account
echo $PA_TOKEN | sudo docker login ghcr.io -u imamd1 --password-stdin

##Push to GCR
sudo docker push ghcr.io/imamd1/shipping-service:2