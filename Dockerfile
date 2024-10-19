#using node:14-alpine image
FROM node:14-alpine
#set work directory ke /app
WORKDIR /app
#copying data from source code to workdir
COPY . .
#define to running in prod mode
ENV NODE_ENV=production DB_HOST=item-db
#install dependencies
RUN npm install --production --unsafe-perm && npm run build
#to expose in port 8080
#when container running, run the command
CMD ["npm", "start"]
EXPOSE 8080