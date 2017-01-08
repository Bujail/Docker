FROM bujail/centos:rootpass

MAINTAINER Bujail Swadiq K K <hi@bujail.com>

RUN yum install -y httpd

ADD index.html /var/www/html/index.html

RUN /usr/sbin/httpd -DFOREGROUND

CMD /usr/sbin/sshd -D
