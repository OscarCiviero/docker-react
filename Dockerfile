#Specify a base image
FROM node:alpine
#work directoy
WORKDIR /usr/app
#move file to file system container
copy ./package.json ./
#install some dep 
RUN npm install
copy ./ ./
#default comand
CMD ["npm", "start"]