# Use the official MySQL image from Docker Hub
FROM mysql

# Set the root password for MySQL (replace '<your_password>' with your desired password)
ENV MYSQL_ROOT_PASSWORD=Sadozai.123

# Expose the MySQL port
EXPOSE 3306

FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install pm2 -g

RUN npm install

COPY . .

EXPOSE 3040

CMD ["pm2-runtime", "server.js"]
