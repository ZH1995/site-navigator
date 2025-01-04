import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

import { createRouter, createWebHistory } from 'vue-router'
import HomePage from '@/pages/HomePage.vue'
import AboutPage from '@/pages/AboutPage.vue'
import NewsPage from '@/pages/NewsPage.vue'
import NewsDetail1 from '@/pages/NewsDetail1.vue'
import NewsDetail2 from '@/pages/NewsDetail2.vue'

const routes = [
    {path:'/home', component:HomePage},
    {path:'/about', component:AboutPage},
    {path:'/news', component:NewsPage, children:[
        {path:'1', component:NewsDetail1},
        {path:'2', component:NewsDetail2}
    ]}
]
const router = createRouter({
    history:createWebHistory(),
    routes:routes
})
let app = createApp(App)
import { createPinia } from 'pinia'
const pinia = createPinia()
app.use(pinia)
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
app.use(ElementPlus)

import * as ElementPlusIconsVue from '@element-plus/icons-vue'
for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    app.component(key, component)
}
app.use(router)
app.mount('#app')
