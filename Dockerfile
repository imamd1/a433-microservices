#initialize node image as a builder
FROM node:14.21-alpine as builder 
# set working dir
WORKDIR /app
#copy all file package.json to current dir
COPY package*.json ./
#running npm install command
RUN npm install
COPY . .
#running npm install command
RUN npm run build
#expose container port to 8000
EXPOSE 8000
#ruuning commang npm run serve
CMD [ "npm", "run", "serve" ]
