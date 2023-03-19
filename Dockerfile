# base image
FROM node:16-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install

# copy app files
COPY . .

# start the app
CMD ["npm", "run", "dev"]
