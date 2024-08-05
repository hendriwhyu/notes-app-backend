# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container to /app
WORKDIR /app

# Copy file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in package.json
RUN npm install

# Buka port 3000 untuk akses aplikasi
EXPOSE 3000

# Start app
CMD [ "npm", "run", "start:prod" ]