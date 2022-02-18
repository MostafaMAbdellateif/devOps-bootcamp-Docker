FROM httpd:2.4

COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

RUN mkdir /code

COPY index.html /code

EXPOSE 9999