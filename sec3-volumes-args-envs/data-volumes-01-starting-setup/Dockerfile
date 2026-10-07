FROM node:latest

WORKDIR /app

COPY package.json .

RUN npm install

COPY --chown=node:node . .

ARG DEFAULT_PORT=80

ENV PORT ${DEFAULT_PORT}

EXPOSE ${PORT}

#VOLUME  [ "/app/temp" ]

#CMD ["node","server.js"]
CMD [ "npm","start" ]

RUN chown -Rh $user:$user /app
#RUN chown -R 1000:1000 /app/temp
#RUN chown -R 1000:1000 /app/feedback
#RUN chmod 777 /app/temp
#RUN chmod 777 /app/feedback