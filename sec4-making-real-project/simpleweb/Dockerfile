FROM node:26-alpine

WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]
