# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source
# This is where we create a production-ready build of our application
# using npm's build script
RUN npm run build

# Start app
CMD [ "npm", "start" ]