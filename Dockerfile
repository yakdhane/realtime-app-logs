Here's the Dockerfile code:

```
# Base image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port and start application
EXPOSE 3000
CMD [ "npm", "start" ]
``` 

Note: Make sure to replace `npm start` with the command you use to start your application if it's different.