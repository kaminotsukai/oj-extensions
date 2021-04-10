FROM php:7.4-cli

# config & src
COPY docker/php/setup/xdebug.ini /tmp/xdebug.ini
COPY docker/php/php.ini /usr/local/etc/php/php.ini
COPY ./src src

# install utils
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
    bash \
    vim

# install oj
RUN apt-get install -y \
    python-pip \
    python3-pip
RUN pip3 install online-judge-tools
RUN echo export PATH="/root/.local/bin/:$PATH" >> ~/.bashrc

# install xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# alias
RUN echo alias ojd='(){sh src/scripts/oj.sh $1}' >> ~/.bashrc
RUN echo alias ojtp='(){oj t -c "php $1"}' >> ~/.bashrc

WORKDIR /work/backend