FROM  centos:latest
RUN yum install -y httpd \
 zip\
 unzip
ADD https:https://www.free-css.com/assets/files/free-css-templates/download/page280/medi.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip medi.zip
RUN cp -rvf medi-html/* .
RUN rm -rf medi.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
