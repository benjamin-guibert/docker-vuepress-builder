FROM node:8

LABEL company="Benjamin Guibert"
LABEL maintainer="contact@bguibert.com"
LABEL version="0.1.0"

WORKDIR /usr/src/app

# Install VuePress

RUN npm install -g vuepress

COPY . .

ENTRYPOINT [ "vuepress", "build" ]
