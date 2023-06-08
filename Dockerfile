FROM openjdk:8-jdk

RUN apt-get update \
&& apt-get install -y curl gnupg

RUN curl -sL https://deb.nodesource.com/setup_19.x  | bash -

RUN apt-get -y install nodejs

RUN npm i -g yarn

WORKDIR /pentaho

COPY . .