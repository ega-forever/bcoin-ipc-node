FROM node:8-slim
ENV NETWORK_TYPE DEFAULT_NETWORK_TYPE
ENV NPM_CONFIG_LOGLEVEL warn

RUN apt update && \
    apt install -y python make g++ git build-essential && \
    npm install -g pm2@2.7.1 && \
    mkdir /app
WORKDIR /app
RUN git clone https://github.com/ChronoBank/bcoin-ipc-node.git .
RUN npm install

EXPOSE 18332 43332 8332 9332 19336 19445
CMD pm2-docker start /mnt/config/${NETWORK_TYPE}/ecosystem.config.js