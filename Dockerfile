FROM drupal:9.0.6-apache

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install module-required libraries
RUN composer require drupal/phpmailer_smtp