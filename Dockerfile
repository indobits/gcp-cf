FROM node:12.16.1-alpine3.11
WORKDIR /app
COPY package.json .
RUN npm i -g npm@6.14.2 && npm i
CMD npm start