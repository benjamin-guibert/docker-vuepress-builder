FROM node:8

LABEL company="Benjamin Guibert"
LABEL maintainer="contact@bguibert.com"
LABEL version="0.1.0"

WORKDIR /usr/src/app

# Install VuePress

RUN npm install -g vuepress

# Create user deploy
RUN adduser --quiet --gecos "" --disabled-password deploy && usermod -aG sudo deploy

USER deploy

ENTRYPOINT [ "/bin/sh", "-c", "vuepress build . 2>&1 | tee /etc/log/vuepress-builder/build.log" ]
