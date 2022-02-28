FROM node

RUN mkdir /usr/lgz/app
WORKDIR /usr/lgz/app

ENV PATH /usr/lgz/app/node_modules/.bin:$PATH
COPY package*.json /usr/lgz/app

RUN npm install

COPY . /usr/lgz/app

EXPOSE 4000
CMD [ "npm", "start"]
