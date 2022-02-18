FROM node:16

WORKDIR /appTest

COPY package*.json ./

RUN npm install

COPY app.js .

EXPOSE 3000

CMD [ "node", "app.js" ]