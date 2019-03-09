FROM python:3.7-alpine3.9

# Update packages
RUN apk update

# Install Java
RUN apk fetch openjdk8
RUN apk add openjdk8

# Update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories

# Install chromedriver
RUN apk add chromium chromium-chromedriver

# Install Node
RUN apk add nodejs
RUN apk add nodejs-npm

# Check versions
RUN python -V
RUN chromedriver -v
RUN node -v
RUN npm -v