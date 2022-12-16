<template>
  <div id="folder-item">
    <h4>{{ item.file_name }}</h4>
    <h5>{{ item.extension }}</h5>
    <h5>{{ formatBytes(item.file_size) }}</h5>
    <h5>{{ formatSecondstoHHMMSS }}</h5>

    <a :href="itemUrl" target="_blank">{{ calcBtnTxt }}</a>
    <a v-if="isPdfItem" :href="pdfReadUrl" target="_blank">Read</a>
  </div>
</template>

<script>
import {mapState} from "vuex";

export default {
  name: "FolderItem",
  props: {
    item: {
      type: Object,
      default: () => {
      }
    },
  },
  computed: {
    ...mapState({
      gumroadUrl: state => state.gumroadUrl
    }),
    isPdfItem () {
      return this.item.extension === "PDF"
    },
    pdfReadUrl () {
      return this.gumroadUrl + this.item.read_url
    },
    formatSecondstoHHMMSS () {
      let sec_num = this.item.duration // don't forget the second param
      let hours   = Math.floor(sec_num / 3600);
      let minutes = Math.floor((sec_num - (hours * 3600)) / 60);
      let seconds = sec_num - (hours * 3600) - (minutes * 60);

      if (hours   < 10) {hours   = "0"+hours;}
      if (minutes < 10) {minutes = "0"+minutes;}
      if (seconds < 10) {seconds = "0"+seconds;}
      return hours + ':' + minutes + ':' + seconds;
    },
    calcBtnTxt () {
      let txt = ''
      switch (this.item.extension) {
        case "MOV":
        case "MP4":
          txt = 'Watch'
          break
        default:
          txt = 'Download'
          break
      }
      return txt
    },
    itemUrl () {
      let urlExtension = ''
      switch (this.item.extension) {
        case "MOV":
        case "MP4":
          urlExtension = this.item.stream_url
          break
        default:
          urlExtension = this.item.download_url
          break
      }
      return this.gumroadUrl + urlExtension
    },
  },
  methods: {
    formatBytes(bytes, decimals = 2) {
      if (!+bytes) return '0 Bytes'

      const k = 1024
      const dm = decimals < 0 ? 0 : decimals
      const sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']

      const i = Math.floor(Math.log(bytes) / Math.log(k))

      return `${parseFloat((bytes / Math.pow(k, i)).toFixed(dm))} ${sizes[i]}`
    }
  },
}
</script>

<style scoped>
a {
  cursor: pointer;
}
</style>