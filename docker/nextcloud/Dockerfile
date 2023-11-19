FROM nextcloud:27.1.3-apache

RUN sed -i 's/80/8080/g' /etc/apache2/sites-available/000-default.conf; \
    sed -i 's/80/8080/g' /etc/apache2/ports.conf; \
    sed -i 's/443/8443/g' /etc/apache2/sites-available/default-ssl.conf; \
    sed -i 's/443/8443/g' /etc/apache2/ports.conf