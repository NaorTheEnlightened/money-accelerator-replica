<template>
  <div>
    <TheNavbar></TheNavbar>
    <section class="flex">
      <Pictures></Pictures>
      <Folder v-for="(module, i) in courseData" :module="module" :key="module.id" :index="i + 1"></Folder>
    </section>
  </div>
</template>

<script>
import TheNavbar from "@/components/TheNavbar";
import Folder from "@/components/Folder";
import jsonData from '../courseData/data.json'
import Pictures from "@/components/Pictures";

export default {
  name: "Main",
  components: {Pictures, Folder, TheNavbar},
  data() {
    return {
      courseData: [...jsonData],
    }
  }
}
</script>

<style scoped>

  .flex {
    display: flex;
    flex-wrap: nowrap;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

</style>