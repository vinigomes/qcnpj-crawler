FROM node:8.6.0-alpine

WORKDIR /usr/src/intellead/qcnpj-crawler/app

COPY package.json ./

RUN npm install --silent --progress=false --production

COPY app.js ./

COPY bin/ ./bin

COPY public/stylesheets/ ./public/stylesheets

COPY routes/ ./routes

COPY src/ ./src

EXPOSE 3000

CMD ["npm", "start"]