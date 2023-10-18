# Initialize node image
FROM node:14-alpine

# Set Working directory to /app directory
WORKDIR /app

# Copying data
COPY . .

# Set node environment nodejs to prod
ENV NODE_ENV=production

# running command for nodejs
RUN npm install --production

# expose node port to 3000
EXPOSE 3000

CMD ["npm","start"]