<template>
  <div class="folder-list-container">
    <div  @click="isActive = !isActive" style="cursor: pointer; display: flex; align-items: center; height: 35px">
      <img src="../assets/arrow.png" width="18" height="18" :class="{ 'active-arrow': isActive }">
      <img src="../assets/folder.png" width="18" height="18">
      <h3>{{ this.index + '. ' + module.name }}</h3>
    </div>
    <div class="folder-list-items-container" v-show="isActive">
      <folder-item v-for="(item, i) in module.children" :key="item.id" :item="item" :index="i + 1"></folder-item>
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
    index: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      isActive: false
    }
  },
  computed: {
    image() {
      // console.log(mo)
      console.log(this.module.image)
      return `${this.module.image}`;
    }
  },
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
    border: 1px solid black;
    border-radius: 6px;
    padding: 0.75rem;
    margin-top: 0.25rem;
  }

  .folder-list-items-container {

  }

  .active-arrow {
    transform: rotate(90deg);
  }
</style>