<template>
  <section :id="category.category">
    <h2>{{ category.category }}</h2>
    <div class="site-list">
      <SiteCard v-for="site in category.sites" :key="site.name" :site="site" />
    </div>
  </section>
</template>

<script setup>
import SiteCard from './SiteCard.vue'
defineProps(['category'])
</script>

<style scoped>
.site-list {
  display: flex;
  flex-wrap: wrap;
  gap: 0 0;
}
section {
  margin-bottom: 48px;
}
h2 {
  font-size: 22px;
  font-weight: 700;
  color: #4F8FFF;
  margin-bottom: 18px;
}
</style>