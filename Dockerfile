FROM python:3.7-alpine3.9

# Update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories

# Install chromedriver
RUN apk update
RUN apk add chromium chromium-chromedriver

# Install Node
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt-get install nodejs -y

# Check versions
RUN python -V
RUN node -v
RUN npm -v