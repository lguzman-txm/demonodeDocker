FROM node

RUN mkdir /usr/lg/app
WORKDIR /usr/lg/app

ENV PATH /usr/lg/app/node_modules/.bin:$PATH
COPY package*.json /usr/lg/app

RUN npm install

COPY . /usr/lg/app

EXPOSE 4000
CMD [ "npm", "start"]
