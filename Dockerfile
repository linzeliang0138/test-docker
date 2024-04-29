FROM php:8.1-cli

# 设置时区 (可选)
RUN apt-get update && apt-get install -y tzdata
ENV TZ=Asia/Shanghai

# 安装常用扩展 (可选)
RUN docker-php-ext-install pdo pdo_mysql

# 设置工作目录 (可选)
WORKDIR /app
