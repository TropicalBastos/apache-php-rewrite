FROM nimmis/apache-php7

COPY apache2.conf /etc/apache2
RUN a2enmod rewrite
RUN service apache2 restart

EXPOSE 80