FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY --chown=node:node . .

#CMD ["node", "app.js"]
CMD [ "npm","start" ]