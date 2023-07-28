FROM nginx:1.24
MAINTAINER https://github.com/Jeff-Tian

RUN rm /etc/nginx/conf.d/default.conf

COPY conf/tapd-webhook.conf /etc/nginx/conf.d/tapd-webhook.conf
