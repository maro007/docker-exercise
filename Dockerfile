FROM node:lts-alpine3.9

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]