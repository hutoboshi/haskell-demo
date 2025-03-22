FROM haskell:9.4

RUN apt-get update && apt-get install -y vim

WORKDIR /usr/src/app
COPY . /usr/src/app