### STAGE 1: Build ###
FROM node:18.10-alpine AS build
#WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build


### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY --from=build /usr/src/app/dist/my-app /usr/share/nginx/html
EXPOSE 80
