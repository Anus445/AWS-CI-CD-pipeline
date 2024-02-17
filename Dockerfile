FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install pm2 -g

RUN npm install

COPY . .

EXPOSE 3040

CMD ["pm2-runtime", "server.js"]
