FROM drupal:8.8.5-apache

COPY ./sites /var/www/html/sites
COPY ./modules /var/www/html/modules
COPY ./profiles /var/www/html/profiles
COPY ./themes /var/www/html/themes
