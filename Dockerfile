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

# Install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | sh -s
ENV PATH /root/.yarn/bin:$PATH
    # npm uninstall -g npm && \
    # rm -rf ~/.npm

# Image command
CMD ["npm", "start"]


