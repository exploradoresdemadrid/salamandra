FROM drupal:9.4.5-apache

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install module-required libraries
RUN composer require drupal/phpmailer_smtp drupal/csv_serialization

COPY ./etc/php/php.ini /usr/local/etc/php/php.ini
