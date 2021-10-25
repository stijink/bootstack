---
to: <%= name %>/Dockerfile
---
# Stage: base
FROM php:<%= version %>-cli-alpine AS base

    WORKDIR /var/www

    RUN docker-php-ext-install opcache pdo_mysql pcntl

    # PHP Configuration
    COPY build/php-conf/*.ini /usr/local/etc/php/conf.d/

    COPY --from=composer /usr/bin/composer /usr/bin/composer

# Stage: Production
FROM base as production

    COPY . .
    RUN composer install --no-dev --classmap-authoritative
