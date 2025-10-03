FROM arm32v7/node:22-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY dashbash-backend /usr/src/app
RUN npm install

COPY dashbash-frontend /usr/src/app/static

EXPOSE 3000

CMD node app.js
