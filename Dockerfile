FROM httpd:2.4
RUN mkdir -p /usr/local/apache2/htdocs/mastercode/
COPY ./mastercode /usr/local/apache2/htdocs/mastercode/
# see https://github.com/AKSarav/Docker-Httpd-Reverseproxy/blob/master/httpd.conf
RUN mkdir -p /usr/local/apache2/conf/sites/
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
#COPY ./vhost.conf /usr/local/apache2/conf/sites/vhost.conf
