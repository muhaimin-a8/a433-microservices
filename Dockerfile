FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./
# installing packages
RUN npm install
COPY . .
# make port 3000 is exposable
EXPOSE 3000
# run the app
CMD [ "npm", "run", "start" ]