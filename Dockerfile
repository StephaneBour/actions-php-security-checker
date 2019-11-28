FROM php:7.3-cli

LABEL version="1.0"
LABEL repository="https://github.com/StephaneBour/actions-php-security-checker"
LABEL homepage="https://github.com/StephaneBour/actions-php-security-checker"
LABEL maintainer="Stéphane Bour <stephane.bour@gmail.com>"

RUN curl -L https://get.sensiolabs.org/security-checker.phar -o /security-checker

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /security-checker
ENTRYPOINT ["/entrypoint.sh"]
