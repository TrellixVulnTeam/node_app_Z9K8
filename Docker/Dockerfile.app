FROM node:14-alpine

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# copy app source code
COPY app.js .env ./

EXPOSE 3000/tcp

CMD [ "npm", "run", "dev" ]
