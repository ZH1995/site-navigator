<template>
  
   <div class="common-layout">
    <el-container direction="vertical">
      <Header></Header>
    
      <About></About>
      <Footer></Footer>
    </el-container>
  </div>
  
</template>

<script setup lang="ts">
import Header from './components/Header.vue'
import Footer from './components/Footer.vue'
import About from './components/About.vue';
</script>

<style>

</style>
