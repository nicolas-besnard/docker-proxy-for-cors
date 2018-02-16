FROM nginx:1.12-alpine

ARG HOST_TO_PROXY

ENV HOST_TO_PROXY $HOST_TO_PROXY

ADD proxy-for-cors.conf.template .

RUN envsubst '$HOST_TO_PROXY' < proxy-for-cors.conf.template > /etc/nginx/conf.d/default.conf

EXPOSE 80
