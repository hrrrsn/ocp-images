FROM nextcloud:28.0.3-apache

RUN sed -i 's/80/8080/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf && \
    sed -i 's/443/8443/g' /etc/apache2/sites-available/default-ssl.conf /etc/apache2/ports.conf