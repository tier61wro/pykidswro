#!/bin/bash

# скрипт для предварительной настройки сервера

# Путь к директории логов для web и nginx
WEB_LOG_DIR="/var/log/pykids_logs/web_logs"
NGINX_LOG_DIR="/var/log/pykids_logs/nginx_logs"

# Создание директории для логов web, если она не существует
if [ ! -d "$WEB_LOG_DIR" ]; then
    sudo mkdir -p "$WEB_LOG_DIR"
    sudo chown "$USER":"$USER" "$WEB_LOG_DIR"
    echo "Created directory for web logs"
else
    echo "Directory for web logs already exists"
fi

# Создание директории для логов nginx, если она не существует
if [ ! -d "$NGINX_LOG_DIR" ]; then
    sudo mkdir -p "$NGINX_LOG_DIR"
    sudo chown "$USER":"$USER" "$NGINX_LOG_DIR"
    echo "Created directory for nginx logs"
else
    echo "Directory for nginx logs already exists"
fi
