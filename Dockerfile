FROM nginx:alpine
RUN mkdir /usr
copy ./usr/share/nginx/html
workdir /usr
RUN npm install
EXPOSE 8080
cmd ["NPM", "start"]
