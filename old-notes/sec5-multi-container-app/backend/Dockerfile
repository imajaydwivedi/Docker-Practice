FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install
#RUN npm config set unsafe-perm true

COPY . .

ENV MONGODB_USERNAME admin
ENV MONGODB_PASSWORD password

EXPOSE 80

CMD ["npm", "start"]

#RUN chown -Rh $user:$user /app
#RUN chmod -R 777 /app
#RUN chown -R 1000:1000 /app