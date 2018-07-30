FROM node:6.11

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json yarn.lock /app/

RUN npm install -g babel-cli

RUN yarn

# Bundle app source
COPY . .

EXPOSE 3000
