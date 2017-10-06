FROM ubuntu-upstart:latest

RUN apt-get update  && apt-get install -y curl git

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*


# Install vue-cli
RUN npm install -g vue-cli

RUN mkdir -p /home/project

EXPOSE 3000