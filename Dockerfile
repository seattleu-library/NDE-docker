# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
# Change the path to your custom module if the name is different
WORKDIR /app/customModule-main

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install -g @angular/cli  && npm install 

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 4201

# Start by using NDE URL parameter
CMD ["npm", "run", "start", "--", "--host", "0.0.0.0"]

# Start by using proxy.conf.mjs config
#CMD ["npm", "run", "start:proxy", "--", "--host", "0.0.0.0"]
