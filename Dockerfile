FROM nginx:1.7.6
MAINTAINER Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/conf.d/example_ssl.conf
COPY build /usr/share/nginx/html
COPY nginx /etc/nginx