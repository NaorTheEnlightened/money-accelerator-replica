<template>
  <div id="folder-item">
    <div id="folder-item-title-section">
      <img :src="itemImg" width="24">
      <h4>{{ this.index + '. ' + item.file_name }}</h4>
    </div>
    <div id="folder-item-information">
      <h5>{{ item.extension }}</h5>
      <h5>{{ formatBytes(item.file_size) }}</h5>
      <h5 v-if="isVideo">{{ formatSecondstoHHMMSS }}</h5>
      <div style="margin-left: auto;">
        <a :href="itemUrl" target="_blank">{{ calcBtnTxt }}</a>
        <a v-if="isPdfItem" :href="pdfReadUrl" target="_blank">Read</a>
      </div>
    </div>
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
    index: {
      type: Number,
      default: 0
    }
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
    itemImg () {
      let urlExtension = ''
      switch (this.item.extension) {
        case "MOV":
        case "MP4":
          urlExtension = "https://icons.iconarchive.com/icons/hopstarter/button/128/Button-Play-icon.png"
          break
        case "PDF":
          urlExtension = "https://icons.iconarchive.com/icons/graphicloads/long-shadow-documents/128/document-filetype-pdf-icon.png"
          break
        default:
          urlExtension = "https://icons.iconarchive.com/icons/martz90/circle/128/camera-icon.png"
          break
      }
      return urlExtension
    },
    isVideo () {
      return this.item.extension === 'MOV' || this.item.extension === 'MP4'
    }
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
a, a:active {
  border-radius: 5px;
  background: black;
  padding: .9125rem;
  color: white;
  cursor: pointer;
  text-decoration: none;
  outline: none;
  margin-right: 0.625rem;
}
#folder-item:after {
  content: "";
  display: block;
  width: 80%;
  height: 1px;
  margin-top: 0.75rem;
  background-color: black;
}

#folder-item {
  margin-top: 0.5rem;
  margin-left: 3rem;
  margin-right: 3rem;
  padding: 0.5rem;
  position: relative;
}

img {
  margin-right: 0.5rem;
}

#folder-item-title-section {
  display: flex;
  align-items: center;

}

#folder-item-information {
  display: flex;
  align-items: center;
  height: 1rem;
  margin-left: 36px;
}


@media (max-width: 769px) {
  #folder-item-information {
    height: 0;
  }

}


h4 {
  margin: 0;
  width: 70vw;
  font-weight: 500;
}

h5 {
  margin-right: .5rem;
  width: fit-content;
  font-weight: 500;
}

#action-buttons {

}

</style>