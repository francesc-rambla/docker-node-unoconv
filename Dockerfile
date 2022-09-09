FROM node:12.18.3-buster-slim

# Installs git, unoconv and chinese fonts
RUN apt-get update && apt-get -y install \
    git \
    unoconv=0.7-1.1 \
    ttf-wqy-zenhei \
    fonts-arphic-ukai \
    fonts-arphic-uming \
    fonts-indic \
&& rm -rf /var/lib/apt/lists/*
ENV LC_ALL es_ES.UTF-8
ENV LANG es_ES.UTF-8
ENV LANGUAGE es_ES.UTF-8

ENTRYPOINT /usr/bin/unoconv --listener --server=0.0.0.0 --port=2002
