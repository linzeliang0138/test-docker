# 使用最小基础镜像
FROM node:lts-alpine

# 创建非 root 用户
RUN adduser -D nodeuser

# 设置工作目录
WORKDIR /home/nodeuser/app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制应用程序代码
COPY . .

# 设置文件权限
RUN chown -R nodeuser:nodeuser .

# 暴露端口
EXPOSE 8080

# 使用非 root 用户运行应用程序
USER nodeuser

# 启动应用程序
CMD ["node", "app.js"]