FROM node:8

LABEL company="Benjamin Guibert"
LABEL maintainer="contact@bguibert.com"
LABEL version="0.1.0"

WORKDIR /usr/src/app

# Create needed directories

RUN mkdir -p /etc/log/vuepress-builder && mkdir -p /var/www

# Install VuePress

RUN npm install -g vuepress

# Build the project

ENTRYPOINT [ "/bin/sh", "-c", "vuepress build -d /var/www . 2>&1 | tee /etc/log/vuepress-builder/build.log" ]
