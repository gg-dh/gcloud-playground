FROM node:5.6.0
MAINTAINER georgii-egor.gorbachev@deliveryhero.com
COPY server.js /server.js
COPY package.json /package.json
CMD ["node", "server.js"]
