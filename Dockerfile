# base image
FROM node:14

# setup environment variabel
ENV NODE_ENV=production DB_HOST=item-db

# setup working directory on image
WORKDIR /app

# copy all files to image
COPY . .

# run script to build in production
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# start app
CMD [ "npm", "start" ]