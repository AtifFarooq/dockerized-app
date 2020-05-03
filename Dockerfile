FROM node:10

# Create app working directory
WORKDIR /usr/src/app

# Install application dependencies
# The wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle this application's source code inside the Docker image
COPY . .

# Since our app binds to port 8080
EXPOSE 8080

# The command to run our container
CMD ["node", "server.js"]