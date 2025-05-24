FROM node:22

WORKDIR /app

COPY server.js .
COPY package.json .
COPY index.html  .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]