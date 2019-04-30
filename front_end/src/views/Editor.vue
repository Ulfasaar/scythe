<template>
  <div class="editorView">
    <!--     <img alt="Scythe logo" src="../assets/scythe.jpeg"> -->
    <Editor msg="Welcome to Your Vue.js + TypeScript App"/>
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import Editor from '@/components/Editor.vue'; // @ is an alias to /src

@Component({
  components: {
    Editor,
  },
})
export default class EditorPage extends Vue {}
</script>
