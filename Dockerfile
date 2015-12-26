FROM node:5
MAINTAINER Giovanni Bassi <giggio@giggio.net>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV HUBOT_ADAPTER=slack
ENV HUBOT_BRAIN_AZURE_STORAGE_ACCOUNT=codecrackerslackhubot
ENV HUBOT_DARK_SKY_DEFAULT_LOCATION="Sao Paulo"
ENV HUBOT_DARK_SKY_UNITS=si

ADD . /usr/src/app
RUN [ "npm", "install" ]

ENTRYPOINT [ "./bin/hubot" ]
