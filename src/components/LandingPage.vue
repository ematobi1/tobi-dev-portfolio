<template>
  <div class="landing-page">
    <h1 class="title">Emmanuel Tobi</h1>
    <h2 class="subtitle">Software Developer Portfolio</h2>
    <p class="tagline">Building clean, modern, interactive digital experiences.</p>
  </div>
</template>

<script lang="ts" setup>
// No logic needed yet
</script>

<style lang="scss" scoped>
.landing-page {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  background-color: #0a0a0a;
  color: #ffffff;
  font-family: 'Helvetica Neue', sans-serif;
  text-align: center;

  .title {
    font-size: 4rem;
    font-weight: 800;
    margin-bottom: 1rem;
    letter-spacing: 2px;
  }

  .subtitle {
    font-size: 1.8rem;
    font-weight: 400;
    margin-bottom: 0.5rem;
    color: #bbbbbb;
  }

  .tagline {
    font-size: 1.2rem;
    color: #999999;
    max-width: 600px;
    margin-top: 1rem;
  }
}
</style>
