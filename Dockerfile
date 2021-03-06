FROM php:7.4-cli

LABEL version="1.1"
LABEL repository="https://github.com/StephaneBour/actions-php-security-checker"
LABEL homepage="https://github.com/StephaneBour/actions-php-security-checker"
LABEL maintainer="Stéphane Bour <stephane.bour@gmail.com>"

RUN curl -L https://github.com/fabpot/local-php-security-checker/releases/download/v1.0.0/local-php-security-checker_1.0.0_linux_386 -o /security-checker

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /security-checker
ENTRYPOINT ["/entrypoint.sh"]
