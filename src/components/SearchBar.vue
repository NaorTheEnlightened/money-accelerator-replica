<template>
  <input placeholder="Search" type="text" v-model="searchText" @input="$emit('filterSearch', searchText)">
</template>

<script>
export default {
  name: "SearchBar",
  data() {
    return {
      searchText: ''
    }
  },

}
</script>