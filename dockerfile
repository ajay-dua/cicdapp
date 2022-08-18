FROM node:alpine
WORKDIR /etc/cicdtestapp
COPY ./package.json ./package.json
RUN npm install
COPY ./ ./
CMD ["npm","start"]
