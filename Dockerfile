# 使用官方 Tomcat 镜像作为基础镜像
FROM tomcat:9.0-jre11

# 设置工作目录
WORKDIR /usr/local/tomcat/webapps

# 暴露端口
EXPOSE 8080

# 启动 Tomcat
CMD ["catalina.sh", "run"]