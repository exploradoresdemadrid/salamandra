FROM drupal:8.9.14-apache

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install module-required libraries
RUN composer require drupal/phpmailer_smtp