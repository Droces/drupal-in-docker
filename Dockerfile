# Use the official Docker Library Drupal image
FROM drupal:10
# It contains Apache - the web server - and PHP.
# Both Apache and PHP are already setup for Drupal sites.

# Download and install needed CLI tools
RUN apt-get update && apt-get install -y \
  curl \
  git \
  nano \
  wget

# Download and install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --2 --install-dir=/usr/local/bin --filename=composer

# Copy custom PHP settings for project
COPY drupal.ini /usr/local/etc/php/conf.d/drupal.ini

# Remove the provided Drupal files
RUN rm -rf /opt/drupal/web

WORKDIR /opt/drupal