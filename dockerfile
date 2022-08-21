FROM node:alpine
WORKDIR /etc/cicdtestapp
RUN apt-get update
RUN apt-get install -y curl
COPY ./package.json ./package.json
RUN npm install
COPY ./ ./
CMD ["npm","start"]
ENV envVar='nice to see Ninni and Adhwin bonding'
EXPOSE  3000:3000
