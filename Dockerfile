#dev stage
FROM node:latest as dev

LABEL maintener="bafode.camara@my-digital-school.org"

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD npm start
