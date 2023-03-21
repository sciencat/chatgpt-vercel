FROM node:18



# 安装依赖
RUN npm install -g pnpm
COPY package.json package-lock.json ./
RUN pnpm i

# 将源代码复制到容器中
COPY . .

# 启动项目
CMD ["pnpm", "dev"]
