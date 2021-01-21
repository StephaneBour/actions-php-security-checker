#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  COMPOSER_LOCK="./composer.lock"
else
  COMPOSER_LOCK="$1"
fi

echo "## Running PHP Security Checker on ${COMPOSER_LOCK}"
echo "PHP Version : ${PHP_FULL_VERSION}"

if [ ! -f "${COMPOSER_LOCK}" ]; then
  echo "\nInvalid file: ${COMPOSER_LOCK}"
  echo "\n\n"

  exit 2
fi

/security-checker --path="${COMPOSER_LOCK}"
