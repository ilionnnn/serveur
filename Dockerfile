# Image officielle PHP avec Apache
FROM php:8.3-apache

# Active mod_rewrite (optionnel mais souvent nécessaire)
RUN a2enmod rewrite

# Copie les fichiers du projet dans le dossier web d’Apache
COPY . /var/www/html/

# Fixe les bons droits
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose le port HTTP (documentatif)
EXPOSE 80