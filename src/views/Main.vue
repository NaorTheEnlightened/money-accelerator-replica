<template>
  <div>
    <TheNavbar />
    <section class="flex">
      <Pictures />
      <SearchBar @filterSearch="filterSearch" />
      <Folder v-for="(module, i) in filteredData" :module="module" :key="module.id" :index="i + 1" />
    </section>
  </div>
</template>

<script>
import TheNavbar from "@/components/TheNavbar";
import Folder from "@/components/Folder";
import jsonData from '../courseData/data.json'
import Pictures from "@/components/Pictures";
import SearchBar from "@/components/SearchBar";

export default {
  name: "Main",
  components: {SearchBar, Pictures, Folder, TheNavbar},
  data() {
    return {
      courseData: [...jsonData],
      lastSearchText: ''
    }
  },
  methods: {
    filterSearch(text) {
      this.lastSearchText = text
    }
  },
  computed: {
    filteredData () {
      const filteredData = JSON.parse(JSON.stringify(this.courseData))
      return filteredData.filter(c => {
        c.children = c.children.filter((file) => {
          return file.file_name.includes(this.lastSearchText)
        })
        return !!c.children.length
      })
    }
  },
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