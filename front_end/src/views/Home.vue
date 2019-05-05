<template>
  <div class="home">
    <!--     <img alt="Scythe logo" src="../assets/scythe.jpeg"> -->
    <!-- <Editor msg="Welcome to Your Vue.js + TypeScript App"/> -->
    <img alt="Vue logo" src="../assets/logo.png">
    <button>Show modal</button>

    <!-- breAKS rendering for some  reason... -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
// import Editor from '@/components/Editor.vue'; // @ is an alias to /src

// @Component({
//   components: {
//     Editor,
//   },
// })
export default class Home extends Vue {}
</script>
