# Use a PHP 8 FPM base image
FROM php:8.0-fpm

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    unzip \
    && docker-php-ext-install zip

# Set working directory
WORKDIR /var/www/html

# Copy application files to the container
COPY ./src /var/www/html

# Set permissions if needed
# RUN chown -R www-data:www-data /var/www/html

# Expose the port PHP-FPM uses
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
