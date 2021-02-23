# build environment
FROM node:12.2.0-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
# To handle 'not get uid/gid'
RUN npm config set unsafe-perm true
RUN npm install --silent
RUN npm install react-scripts@3.4.3 -g --silent
COPY . /app
EXPOSE 3000
RUN npm rebuild node-sass
RUN npm run build

# production environment
FROM nginx:1.16.0-alpine
COPY --from=build /app/build /usr/share/nginx/html
# Nginx config
RUN rm -rf /etc/nginx/conf.d
COPY conf /etc/nginx

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]