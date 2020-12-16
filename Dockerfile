FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install
# RUN npm audit fix

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
RUN npm run build 
# --fix

EXPOSE 8080
CMD [ "http-server", "dist" ]



# FROM node:alpine as build-stage
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY ./ .
# RUN npm run build --fix
# RUN npm run 

# FROM nginx as production-stage
# RUN mkdir /app
# COPY --from=build-stage /app/dist /app
# COPY nginx.conf /etc/nginx/nginx.conf

