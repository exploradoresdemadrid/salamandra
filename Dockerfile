FROM drupal:8.9.19-apache

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install module-required libraries
RUN composer require drupal/phpmailer_smtp

COPY ./etc/php/php.ini /usr/local/etc/php/php.ini