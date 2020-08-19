FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
        && apk add --no-cache ca-certificates \
        && apk update \
        && apk upgrade \
	&& apk add openssl

ARG PHP_UPSTREAM_CONTAINER=php-fpm
ARG PHP_UPSTREAM_PORT=9000
RUN echo "upstream php-upstream { server ${PHP_UPSTREAM_CONTAINER}:${PHP_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf

ADD ./startup.sh /opt/startup.sh
RUN sed -i 's/\r//g' /opt/startup.sh
RUN chmod u+x /opt/startup.sh && /opt/startup.sh

#EXPOSE 80
