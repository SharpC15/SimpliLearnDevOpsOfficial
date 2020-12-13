FROM ubuntu



RUN apt-get update && apt-get upgrade -y \

    && apt-get clean



RUN mkdir /app

WORKDIR /app


