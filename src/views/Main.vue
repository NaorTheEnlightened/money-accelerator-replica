<template>
  <div>
    <TheNavbar></TheNavbar>
    <section class="flex">
      <div style="display:flex;flex-wrap: nowrap;">
        <img src="../assets/atm-money-icon.png" alt="">
        <img src="../assets/cash-hundred-dollar-bills.png" alt="">
        <img src="../assets/wallet-icon.png" alt="">
        <img src="../assets/cash.png" alt="">
        <img src="../assets/credit-card.png" alt="">
      </div>
      <Folder v-for="module in courseData" :module="module" :key="module.id"></Folder>
    </section>
  </div>
</template>

<script>
import TheNavbar from "@/components/TheNavbar";
import Folder from "@/components/Folder";
import jsonData from '../courseData/data.json'

export default {
  name: "Main",
  components: {Folder, TheNavbar},
  data() {
    return {
      courseData: [...jsonData],
    }
  }
}
</script>

<style scoped>

  img {
    width: 192px;
  }

  .flex {
    display: flex;
    flex-wrap: nowrap;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

</style>