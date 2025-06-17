FROM oraclelinux:8
LABEL authors="Jenkins"
RUN yum install -y httpd \
zip \
unzip
ADD https://drive.google.com/file/d/1IZoZFXnFb5YOqzy5Yc6nciVKWRSCVTrU/view?usp=drive_link /var/www/html/
WORKDIR /var/www/html
RUN ls -lrt /var/www/html
RUN rm -rf template*

CMD ["/usr/sbin/httpd", "-D", "FORGROUND" ]
EXPOSE 80
