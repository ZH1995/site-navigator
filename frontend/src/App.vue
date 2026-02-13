<script setup>
import Sidebar from './components/Sidebar.vue'
import SiteCategory from './components/SiteCategory.vue'
import Footer from './components/Footer.vue'
import categories from './data/sites.js'
</script>

<template>
  <div class="layout">
    <Sidebar />
    <main>
      <SiteCategory
        v-for="cat in categories"
        :key="cat.category"
        :category="cat"
      />
      <Footer />
    </main>
  </div>
</template>

<style>
.layout {
  display: flex;
  min-height: 100vh;
}
main {
  flex: 1;
  padding: 32px;
  background: #fafafa;
  min-width: 0;
}

/* 响应式：小屏侧边栏变为顶部栏 */
@media (max-width: 900px) {
  .layout {
    flex-direction: column;
  }
  main {
    padding: 16px 4vw;
  }
}
</style>
