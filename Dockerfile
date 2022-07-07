# get the base node image
FROM node:alpine as builder

#make a new dir 
RUN mkdir -p /home/app

# set the working dir for container
WORKDIR /home/app

# copy the json file first
COPY ./package.json /home/app

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

EXPOSE 3000

# build the folder
CMD [ "npm", "start" ]