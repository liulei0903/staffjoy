FROM node:alpine as builder
WORKDIR '/build'
COPY app ./app
COPY resources ./resources
COPY third_party ./third_party

WORKDIR '/build/app'

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm rebuild node-sass
RUN cnpm install -g webpack
RUN cnpm run build

RUN ls /build/app/dist

FROM nginx
EXPOSE 80
COPY --from=builder /build/app/dist /usr/share/nginx/html


