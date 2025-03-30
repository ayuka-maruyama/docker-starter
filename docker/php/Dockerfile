# 最新のPHPをインストール
FROM php:latest-fpm

# php.iniの設定ファイルをコピー
COPY docker/php/php.ini /usr/local/etc/php/

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    zlib1g-dev \
    libzip-dev \
    unzip \
    && docker-php-ext-install pdo_mysql zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Composerのインストール
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer self-update

# 作業ディレクトリを設定
WORKDIR /var/www
