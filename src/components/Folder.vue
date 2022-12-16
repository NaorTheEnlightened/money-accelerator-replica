<template>
  <div class="folder-list-container">
    <div  @click="isActive = !isActive">
      <img src="../assets/arrow.png" width="18" height="18" :class="{ 'active-arrow': isActive }">
      <img src="../assets/folder.png" width="18" height="18">
      <h3>{{ module.name }}</h3>
    </div>
    <div class="folder-list-items-container" v-show="isActive">
      <folder-item v-for="item in module.children" :key="item.id" :item="item"></folder-item>
    </div>
  </div>
</template>

<script>
import FolderItem from "@/components/FolderItem";
export default {
  components: {FolderItem},
  props: {
    module: {
      type: Object,
      default: () => {}
    },
  },
  data() {
    return {
      isActive: false
    }
  }
}
</script>

<style scoped>
  img {
    padding-right: 0.5rem;
  }
  .folder-list-container {
    box-sizing: border-box;
    width: 100%;
    max-width: 1024px;
    /*display: flex;*/
    /*align-items: center;*/
    border: 1px solid black;
    border-radius: 6px;
    padding: 4px;
  }

  .folder-list-items-container {

  }

  .active-arrow {
    transform: rotate(90deg);
  }
</style>