<template>
  <aside
    class="sidebar"
    :class="{ collapsed: isCollapsed }"
  >
    <div class="sidebar-header">
      <img src="/icons/sitenavigator.png" alt="Logo" class="logo-img" />
      <span class="logo-text">真不错导航</span>
      <button class="sidebar-toggle" @click="toggleSidebar">
        <span v-if="isCollapsed">&#9776;</span>
        <span v-else>&times;</span>
      </button>
    </div>
    <nav v-show="!isCollapsed || !isMobile">
      <ul>
        <li v-for="cat in categories" :key="cat.category">
          <a :href="'#' + cat.category">{{ cat.category }}</a>
        </li>
      </ul>
    </nav>
    <div class="tools" v-show="!isCollapsed || !isMobile">
      <a href="https://www.zhenbucuo.tech/">品牌官网 | 前往↗</a>
      <a href="#" @click.prevent="showMailTip">提交您想收录的网站</a>
    </div>
  </aside>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'
import categories from '../data/sites.js'

const isMobile = ref(window.innerWidth < 900)
const isCollapsed = ref(isMobile.value)

function handleResize() {
  isMobile.value = window.innerWidth < 900
  if (!isMobile.value) isCollapsed.value = false
  else isCollapsed.value = true
}
function toggleSidebar() {
  isCollapsed.value = !isCollapsed.value
}
function showMailTip() {
  window.alert('请发送邮件至 577435302@qq.com 提交收录网站信息。')
}
onMounted(() => {
  window.addEventListener('resize', handleResize)
})
onBeforeUnmount(() => {
  window.removeEventListener('resize', handleResize)
})
</script>

<style scoped>
.sidebar {
  width: 240px;
  background: linear-gradient(135deg, #2b3240 60%, #4F8FFF 100%);
  color: #fff;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  padding: 0;
  box-shadow: 2px 0 16px rgba(0,0,0,0.06);
  border-radius: 0 24px 24px 0;
  transition: width 0.2s, min-height 0.2s;
  position: relative;
}
.sidebar-header {
  display: flex;
  align-items: center;
  padding: 32px 24px 24px 24px;
  gap: 12px;
  position: relative;
}
.logo-img {
  width: 36px;
  height: 36px;
  border-radius: 10px;
  box-shadow: 0 2px 8px #0001;
}
.logo-text {
  font-size: 22px;
  font-weight: bold;
  letter-spacing: 1px;
  flex: 1;
}
.sidebar-toggle {
  display: none;
  background: none;
  border: none;
  color: #fff;
  font-size: 28px;
  cursor: pointer;
  margin-left: 8px;
}
nav ul {
  list-style: none;
  padding: 0 24px;
  margin: 0;
}
nav li {
  margin: 18px 0;
  font-size: 16px;
  border-radius: 8px;
  transition: background 0.2s, color 0.2s;
}
nav li a {
  color: #fff;
  text-decoration: none;
  display: block;
  padding: 8px 12px;
  border-radius: 8px;
  transition: background 0.2s, color 0.2s;
}
nav li a:hover {
  background: #4F8FFF33;
  color: #fff;
}
.tools {
  margin-top: auto;
  padding: 0 24px 32px 24px;
  font-size: 15px;
}
.tools a {
  display: block;
  color: #e0e6f6;
  margin: 10px 0;
  text-decoration: none;
  border-radius: 6px;
  padding: 6px 10px;
  transition: background 0.2s, color 0.2s;
}
.tools a:hover {
  background: #4F8FFF33;
  color: #fff;
}

/* 响应式：小屏侧边栏收起为顶部栏 */
@media (max-width: 900px) {
  .sidebar {
    width: 100vw;
    min-height: unset;
    height: auto;
    flex-direction: row;
    align-items: flex-start;
    border-radius: 0 0 24px 24px;
    box-shadow: 0 2px 16px rgba(0,0,0,0.06);
    padding: 0;
    z-index: 100;
  }
  .sidebar-header {
    flex: 1;
    padding: 16px 16px 16px 16px;
    gap: 10px;
  }
  .sidebar-toggle {
    display: block;
  }
  nav, .tools {
    background: #2b3240;
    position: absolute;
    left: 0;
    top: 60px;
    width: 100vw;
    z-index: 10;
    border-radius: 0 0 24px 24px;
    box-shadow: 0 4px 24px #0002;
  }
  .sidebar.collapsed nav,
  .sidebar.collapsed .tools {
    display: none;
  }
}
</style>