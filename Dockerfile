FROM dehuk/docker-laravel

RUN apt-get update  && apt-get install -y curl

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs

# Install vue-cli
RUN npm install -g vue-cli