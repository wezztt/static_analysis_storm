FROM rzbender/php:7.3-ci-alpine

ENV COMPOSER_HOME /root/.composer
#Code Sniffer
RUN composer global require "squizlabs/php_codesniffer=*" && \
    ln -s /root/.composer/vendor/bin/phpcs /usr/local/bin/phpcs && \
    rm -rf /tmp/.composer/cache

#Mess Detector
RUN composer global require "phpmd/phpmd=*" && \
    ln -s /root/.composer/vendor/bin/phpmd /usr/local/bin/phpmd && \
    rm -rf /root/.composer/cache

#PHP CS Fixer
RUN composer global require "friendsofphp/php-cs-fixer=*" && \
    ln -s /root/.composer/vendor/bin/php-cs-fixer /usr/local/bin/php-cs-fixer && \
    rm -rf /root/.composer/cache

#PHP phpstan
RUN composer global require "phpstan/phpstan=*" && \
    ln -s /root/.composer/vendor/bin/phpstan /usr/local/bin/phpstan && \
    rm -rf /root/.composer/cache