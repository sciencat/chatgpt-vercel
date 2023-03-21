FROM node:18



# 安装依赖
RUN npm install -g pnpm
# 将源代码复制到容器中
COPY . .
RUN pnpm i



# 启动项目
CMD ["pnpm", "dev"]
