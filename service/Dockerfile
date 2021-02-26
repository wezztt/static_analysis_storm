FROM php:7.4-alpine

ENV COMPOSER_HOME /root/.composer

#Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    chmod +x composer.phar && mv composer.phar /usr/bin/composer

#Code Sniffer && Mess Detector && CS Fixer && phpstan
RUN composer global require "squizlabs/php_codesniffer" "phpmd/phpmd" "friendsofphp/php-cs-fixer" "phpstan/phpstan" && \
    ln -s /root/.composer/vendor/bin/phpcs /usr/local/bin/phpcs && \
    ln -s /root/.composer/vendor/bin/phpmd /usr/local/bin/phpmd && \
    ln -s /root/.composer/vendor/bin/php-cs-fixer /usr/local/bin/php-cs-fixer && \
    ln -s /root/.composer/vendor/bin/phpstan /usr/local/bin/phpstan && \
    rm -rf /tmp/.composer/cache