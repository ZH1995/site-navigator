#!/bin/bash

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}开始部署 site-navigator (原生部署)...${NC}"

cd /opt/site-navigator

# 1. 拉取最新代码
echo -e "${YELLOW}[1/6] 拉取最新代码...${NC}"
git pull origin main

# 2. 前端构建
echo -e "${YELLOW}[2/6] 构建前端...${NC}"
cd /opt/site-navigator/frontend
npm install
npm run build

# 3. 部署前端静态文件
echo -e "${YELLOW}[3/6] 部署前端...${NC}"
sudo rm -rf /var/www/site-navigator/*
sudo cp -r dist/* /var/www/site-navigator/
sudo chown -R www-data:www-data /var/www/site-navigator
sudo chmod -R 755 /var/www/site-navigator

# 4. 重启 Nginx
echo -e "${YELLOW}[4/6] 重启 Nginx...${NC}"
sudo nginx -t
sudo systemctl restart nginx

# 检查服务状态
echo -e "${GREEN}检查服务状态...${NC}"
sudo systemctl status nginx --no-pager

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}部署完成!${NC}"
echo -e "${GREEN}访问地址: https://site-navigator.zhenbucuo.tech${NC}"
echo -e "${GREEN}========================================${NC}"