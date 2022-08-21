FROM node:alpine
WORKDIR /etc/cicdtestapp
COPY ./package.json ./package.json
RUN npm install
COPY ./ ./
RUN apt-get update
RUN apt-get install -y curl
ENV envVar='nice to see Ninni and Adhwin bonding'
EXPOSE  3000:3000
CMD ["npm","start"]
