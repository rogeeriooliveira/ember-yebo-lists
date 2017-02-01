# Latest stable node image
FROM node:argon
#
EXPOSE 4200 35729 49152

#
ENV PATH /root/.yarn/bin:$PATH

# Install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | sh -s && \
    npm uninstall -g npm && \
    rm -rf ~/.npm

#
RUN yarn global add gulp bower ember-cli watchman phantomjs-prebuilt

#
WORKDIR /usr/local/src/

# Be more eficient
COPY package.json yarn.lock bower.json /usr/local/src/

# Get project deps
RUN yarn --pure-lockfile && bower install --allow-root

# Copy the files
COPY . /usr/local/src

# Image command
CMD ["yarn", "start"]
