FROM node:argon


RUN npm install -q -g gulp
RUN npm install -q -g bower
RUN npm install -q -g phantomjs
# RUN npm install -q -g ember-cli@2.10.0
RUN npm install -q -g ember-cli
RUN npm install -q -g watchman

# install watchman
# RUN git clone https://github.com/facebook/watchman.git &&\
#     cd watchman &&\
#     git checkout v3.5.0 &&\
#     ./autogen.sh &&\
#     ./configure &&\
#     make &&\
#     make install

EXPOSE 4200 80 443 35729 49152

WORKDIR /usr/local/src/

# Be more eficient
COPY package.json bower.json /usr/local/src/

# Get project deps
RUN bower install --allow-root
RUN npm install

# Copy the files
COPY . /usr/local/src

# Image command
CMD ["npm", "start"]


