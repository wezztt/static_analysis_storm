FROM php:8-alpine

ENV COMPOSER_HOME /root/.composer

#Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    chmod +x composer.phar && mv composer.phar /usr/bin/composer

#Code Sniffer && Mess Detector && CS Fixer && phpstan
RUN composer global require "squizlabs/php_codesniffer:*" "phpmd/phpmd:*" "friendsofphp/php-cs-fixer:*" "phpstan/phpstan:*" && \
    ln -s /root/.composer/vendor/bin/phpcs /usr/local/bin/phpcs && \
    ln -s /root/.composer/vendor/bin/phpmd /usr/local/bin/phpmd && \
    ln -s /root/.composer/vendor/bin/php-cs-fixer /usr/local/bin/php-cs-fixer && \
    ln -s /root/.composer/vendor/bin/phpstan /usr/local/bin/phpstan && \
    rm -rf /tmp/.composer/cache
