FROM node:10
WORKDIR /usr/src/app
COPY start.sh /usr/local/bin/start
COPY package.json /usr/src/app/package.json
RUN npm install
RUN chmod +x /usr/local/bin/start
COPY . .
CMD ["/usr/local/bin/start"]