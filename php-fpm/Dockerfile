ARG INSTALL_PHP_VERSION
FROM registry.cn-shenzhen.aliyuncs.com/derick/repos:php${INSTALL_PHP_VERSION}-fpm

COPY ./startup.sh /opt/
RUN sed -i 's/\r//g' /opt/startup.sh
RUN chmod u+x /opt/startup.sh && /opt/startup.sh
