# 真不错导航（site-navigator）

一个现代化、响应式的网站导航平台，基于 Vue 3 + Vite 构建，支持多分类、侧边栏导航、卡片式展示和移动端适配。

## 功能特色

- 多分类网站导航，支持自定义分组
- 美观现代的侧边栏，移动端自动收起为顶部栏
- 卡片式网站展示，支持 logo、简介、跳转
- 响应式布局，适配手机和平板
- 支持提交收录网站
- 一键部署脚本

## 项目结构

```
├── frontend/
│   ├── index.html
│   ├── package.json
│   ├── vite.config.js
│   ├── public/
│   │   └── icons/
│   ├── src/
│   │   ├── App.vue
│   │   ├── main.js
│   │   ├── assets/
│   │   │   └── global.css
│   │   ├── components/
│   │   │   ├── Footer.vue
│   │   │   ├── Sidebar.vue
│   │   │   ├── SiteCard.vue
│   │   │   └── SiteCategory.vue
│   │   └── data/
│   │       └── sites.js
├── deploy.sh
├── README.md
```

## 本地开发

```sh
cd frontend
npm install
npm run dev
```

## 构建与部署

```sh
npm run build
```

部署脚本：[deploy.sh](deploy.sh) 支持一键部署到服务器（需配置 Nginx）。

## 更换 Logo 和标题

- 修改 `frontend/index.html` 的 `<title>` 和 `<link rel="icon">`，logo图片放在 `public/icons/` 下。

## 提交收录网站

如需收录新网站，请发送邮件至：577435302@qq.com

## License

MIT
