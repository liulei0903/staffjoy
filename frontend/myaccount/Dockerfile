FROM node:alpine as builder
WORKDIR '/build'
COPY myaccount ./myaccount
COPY resources ./resources
COPY third_party ./third_party

WORKDIR '/build/myaccount'
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install
RUN cnpm rebuild node-sass
RUN cnpm run build

RUN ls /build/myaccount/dist

FROM nginx
EXPOSE 80
COPY --from=builder /build/myaccount/dist /usr/share/nginx/html

