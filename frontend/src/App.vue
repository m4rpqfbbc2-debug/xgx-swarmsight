<template>
  <router-view />
</template>

<script setup>
// Using Vue Router for page management
</script>

<style>
/* Global style reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

#app {
  font-family: 'DM Sans', 'Inter', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #e7e5e4;
  background-color: #110f0d;
}

/* Scrollbar styles */
::-webkit-scrollbar {
  width: 8px;
  height: 8px;
}

::-webkit-scrollbar-track {
  background: #1c1917;
}

::-webkit-scrollbar-thumb {
  background: #44403c;
  border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
  background: #78716c;
}

/* Global button styles */
button {
  font-family: inherit;
}
</style>
