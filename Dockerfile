FROM node:13.12.0-alpine

RUN mkdir -p /src/proxy

WORKDIR /src/proxy

COPY . /src/proxy

RUN npm install

RUN npm run pbuild

EXPOSE 3000

CMD [ "npm", "start" ]