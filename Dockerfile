FROM node:argon

RUN npm install -q -g gulp bower phantomjs ember-cli watchman

EXPOSE 4200 80 443 35729 49152

WORKDIR /usr/local/src/

# Be more eficient
COPY package.json bower.json /usr/local/src/

# Get project deps
RUN bower install --allow-root && npm install

# Copy the files
COPY . /usr/local/src

# Image command
CMD ["npm", "start"]


