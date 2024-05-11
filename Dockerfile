#choose the proper node image.... https://hub.docker.com
FROM node:18-alpine as BUILD_IMAGE
WORKDIR /app/react-app
#copy package.json
COPY package.json
# install all our packages
RUN npm install
# copy all our remaining files
COPY . .
# Finally build our project
RUN npm run build


# Here, we are implementing the multi-stage build. It greatly reduces our size
# it also won't expose our code in our container as we will only copy
# the build output from the first stage.
# beginning of second stage
FROM node:18-alpine as PRODUCTION_IMAGE
WORKDIR /app/react-app
# here, we are copying /app/react-app/dist folder from BUILD IMAGE to
# /app/react-app/dist in this
COPY --from=BUILD IMAGE /app/react-app/dist/ /app/react-app/dist/


# Here, we are implementing the multi-stage build. It greatly reduces our size
# it also won't expose our code in our container as we will only copy
# the build output from the first stage
# beginning of second stage
FROM node:18-alpine as PRODUCTION IMAGE
WORKDIR /app/react-app
# here, we are copying /app/react-app/dist folder from BUILD_IMAGE to
# /app/react-app/dist in this stage
# Why dist folder ????
# When we run npm run build, vite will generate dist directory that contents
# our build files
COPY --from=BUILD_IMAGE /app/react-app/dist/ /app/react-app/dist/ 