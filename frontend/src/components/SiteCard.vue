<template>
  <a :href="site.url" class="site-card" target="_blank">
    <img :src="`/icons/${site.icon}`" alt="" class="icon" />
    <div class="info">
      <strong>{{ site.name }}</strong>
      <p>{{ site.desc }}</p>
    </div>
  </a>
</template>

<script setup>
defineProps(['site'])
</script>

<style scoped>
.site-card {
  display: flex;
  align-items: center;
  width: 340px;
  height: 90px;
  background: #fff;
  border-radius: 16px;
  box-shadow: 0 2px 12px rgba(79,143,255,0.06);
  margin: 16px 16px 0 0;
  padding: 18px 22px;
  text-decoration: none;
  color: #222;
  transition: box-shadow 0.2s, transform 0.2s;
  box-sizing: border-box;
  border: 1px solid #f0f3fa;
}
.site-card:hover {
  box-shadow: 0 8px 24px rgba(79,143,255,0.14);
  transform: translateY(-2px) scale(1.03);
  border-color: #4F8FFF22;
}
.icon {
  width: 48px;
  height: 48px;
  border-radius: 12px;
  margin-right: 18px;
  object-fit: contain;
  background: #f5f7fa;
  flex-shrink: 0;
  border: 1px solid #e5e9f2;
}
.info {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
strong {
  font-size: 18px;
  margin-bottom: 6px;
  font-weight: 600;
  color: #222;
}
p {
  font-size: 14px;
  color: #666;
  margin: 0;
  line-height: 1.4;
}
</style>