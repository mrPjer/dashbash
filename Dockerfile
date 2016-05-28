FROM node:6.2.0

RUN npm install -g http-server
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN mkdir -p /usr/src/frontend

COPY dashbash-backend /usr/src/app
RUN npm install

COPY dashbash-frontend /usr/src/frontend

EXPOSE 3000
EXPOSE 8080

CMD http-server /usr/src/frontend & exec node app.js
