# Define node v14 image
FROM node:14-alpine
# defining working directory
WORKDIR /app
# copying data from workdir to container
COPY . . 
#define env to running in prod mode
ENV NODE_ENV=production DB_HOST=item-db
#install dependencies
RUN npm install --production --unsafe-perm && npm run build
#when container running, run the command
CMD ["npm", "start"]
#to expose in port 8080
EXPOSE 8080