FROM node:latest

# Install MySQL client
RUN apt-get install -y mysql-client

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Expose ports for Node.js and MySQL
EXPOSE 3040 3306

# Copy application files
COPY . .

# Start MySQL service
CMD service mysql start && pm2-runtime server.js
