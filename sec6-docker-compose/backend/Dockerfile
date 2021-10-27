FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

#RUN chown -Rh node:node /app/logs

CMD ["npm", "start"]

RUN chown -Rh node:node /app/logs