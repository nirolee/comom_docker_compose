FROM redis:latest

ARG REDIS_CONFIG_PATH=/usr/local/etc/redis/redis.conf
COPY redis.conf ${REDIS_CONFIG_PATH}

VOLUME /data

RUN sed -i -e 's@^protected-mode yes$@protected-mode no@g' ${REDIS_CONFIG_PATH}
