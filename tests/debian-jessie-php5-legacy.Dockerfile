FROM williamyeh/ansible:debian8-onbuild

RUN apt-get update
CMD ["sh", "tests/test.sh", "debian-jessie-php5-legacy"]

