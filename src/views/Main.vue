<template>
  <div>
    <TheNavbar></TheNavbar>
    <section class="flex">
      <Folder v-for="module in courseData" :module="module" :key="module.id"></Folder>
    </section>
  </div>
</template>

<script>
import TheNavbar from "@/components/TheNavbar";
import Folder from "@/components/Folder";
/*
import module1 from '../json/1. The Money Accelerator.txt'
import module2 from '../json/2. The Mentorships Training.txt'
import module3 from '../json/3. Super Affiliate Marketing Secrets 3.0.txt'
import module4 from '../json/4. Adult Marketing Secrets 3.0.txt'
import module5 from '../json/5. Sweepstake Marketing Secrets 3.0.txt'
import module6 from '../json/6. The Done For You System.txt'
import module7 from '../json/7. Sales God 3.0.txt'
import module8 from '../json/8. Next Level Marketing 3.0.txt'
import module9 from '../json/9. YouTube Viral Growth Secrets 3.0.txt'
import module10 from '../json/10. The Banger Method.txt'
import module11 from '../json/11. The Golden Ticket Method.txt'
import module12 from '../json/12. The Instant Money Blueprint.txt'
import module13 from '../json/13. The Passive Income Juggernaut.txt'
import module14 from '../json/14. Copywriting Secrets 3.0.txt'
import module15 from '../json/15. New Make Money Methods.txt'
import module16 from '../json/16. The Monthly Extra Content.txt'
import module17 from '../json/17. Monthly $1,000 - $10,000+ Giveaway.txt'
import module18 from '../json/18. Become An Affiliate For The Money Accelerator (60% Recurring Commissions!).txt'
import module19 from '../json/19. Get $1M+ In FREE Bonus Courses.txt'
import module20 from '../json/20. Premium Customer Support.txt'
*/
import jsonData from '../courseData/data.json'

export default {
  name: "Main",
  components: {Folder, TheNavbar},
  data() {
    return {
      courseData: [...jsonData],
      courseContent: [
        {
          "type": "folder",
          "id": "SLKEwLpqYhBWfe1PeADwdQ==",
          "name": "The Money Accelerator (New Content Monthly)",
          "children": [
            {
              "type": "file",
              "id": "Q7-V-NHYD47jmbXOt20OhA==",
              "file_name": "Welcome Inside The Money Accelerator!",
              "description": "",
              "extension": "MP4",
              "file_size": 916027328,
              "pagelength": null,
              "duration": 362,
              "content_length": 362,
              "download_url": null,
              "latest_media_location": {
                "location": 1,
                "timestamp": "2022-12-06T12:40:31.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/Q7-V-NHYD47jmbXOt20OhA==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "uvFJjv3cYJ7Gl6MXrn1qKQ==",
              "file_name": "Why People Don't Make Money Online",
              "description": "",
              "extension": "MP4",
              "file_size": 2125673894,
              "pagelength": null,
              "duration": 841,
              "content_length": 841,
              "download_url": null,
              "latest_media_location": {
                "location": 841,
                "timestamp": "2022-11-30T21:50:39.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/uvFJjv3cYJ7Gl6MXrn1qKQ==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "6xdtw8T0sdQV3FWMgLAClA==",
              "file_name": "The Accelerator To Making Money Online Fast",
              "description": "",
              "extension": "MP4",
              "file_size": 83533351,
              "pagelength": null,
              "duration": 1626,
              "content_length": 1626,
              "download_url": null,
              "latest_media_location": {
                "location": 59,
                "timestamp": "2022-12-06T12:36:48.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/6xdtw8T0sdQV3FWMgLAClA==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "7R0tPxi45O8JNZ1qUpuFdw==",
              "file_name": "Dark Persuasion 25 Cognitive Biases 25 Cognitive Biases The Psychology of Human Misjudgment",
              "description": "",
              "extension": "MP4",
              "file_size": 684719159,
              "pagelength": null,
              "duration": 1382,
              "content_length": 1382,
              "download_url": null,
              "latest_media_location": {
                "location": 151,
                "timestamp": "2022-11-28T12:31:08.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/7R0tPxi45O8JNZ1qUpuFdw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "GyCxN9PH1YBHNiTeTLhUVw==",
              "file_name": "How To Get Attention - The Key To Making Money Online",
              "description": "",
              "extension": "MP4",
              "file_size": 549640029,
              "pagelength": null,
              "duration": 672,
              "content_length": 672,
              "download_url": null,
              "latest_media_location": {
                "location": 672,
                "timestamp": "2022-11-28T18:24:46.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/GyCxN9PH1YBHNiTeTLhUVw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "-3mhjWtwnqzpQIbuSRSMyw==",
              "file_name": "How To Make Big Money Online",
              "description": "",
              "extension": "MP4",
              "file_size": 664408408,
              "pagelength": null,
              "duration": 809,
              "content_length": 809,
              "download_url": null,
              "latest_media_location": {
                "location": 3,
                "timestamp": "2022-11-28T18:27:08.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/-3mhjWtwnqzpQIbuSRSMyw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "6q6X0MAWTV8ZsxO2FhriAw==",
              "file_name": "How To Make 6 - 7 Figures Online",
              "description": "",
              "extension": "MP4",
              "file_size": 35857172,
              "pagelength": null,
              "duration": 844,
              "content_length": 844,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/6q6X0MAWTV8ZsxO2FhriAw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "Sm2kvYQGv9je-rrBih8zag==",
              "file_name": "How To Blowup On Social Media",
              "description": "",
              "extension": "MP4",
              "file_size": 407792560,
              "pagelength": null,
              "duration": 499,
              "content_length": 499,
              "download_url": null,
              "latest_media_location": {
                "location": 49,
                "timestamp": "2022-12-04T04:37:13.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/Sm2kvYQGv9je-rrBih8zag==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "UTactEOW3fvJp-sUC9FKiw==",
              "file_name": "How To Get Rich ",
              "description": "",
              "extension": "MP4",
              "file_size": 508917063,
              "pagelength": null,
              "duration": 497,
              "content_length": 497,
              "download_url": null,
              "latest_media_location": {
                "location": 497,
                "timestamp": "2022-12-01T20:28:24.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/UTactEOW3fvJp-sUC9FKiw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "72XiWAJ5fhz-RHGhoGSabg==",
              "file_name": "How To Sell Anything To Anyone - Expert Advice",
              "description": "",
              "extension": "MP4",
              "file_size": 731935419,
              "pagelength": null,
              "duration": 715,
              "content_length": 715,
              "download_url": null,
              "latest_media_location": {
                "location": 84,
                "timestamp": "2022-12-01T20:29:38.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/72XiWAJ5fhz-RHGhoGSabg==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "mkCpqEaDuCJTctQPrcXEgQ==",
              "file_name": "The Sales Funnel Guide The Best Sales Funnels To Make Money Online",
              "description": "",
              "extension": "MP4",
              "file_size": 560961722,
              "pagelength": null,
              "duration": 547,
              "content_length": 547,
              "download_url": null,
              "latest_media_location": {
                "location": 0,
                "timestamp": "2022-11-30T21:52:56.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/mkCpqEaDuCJTctQPrcXEgQ==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "jrxc6riVf2VDYLtoYeeXEg==",
              "file_name": "What I Would Do If I Was Broke + Success Tips",
              "description": "",
              "extension": "MP4",
              "file_size": 540106050,
              "pagelength": null,
              "duration": 663,
              "content_length": 663,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/jrxc6riVf2VDYLtoYeeXEg==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "gZ4io6mfDgXKmu4l6ywQaQ==",
              "file_name": "Young Millionaire Teaches How To Make Money",
              "description": "",
              "extension": "MP4",
              "file_size": 257241853,
              "pagelength": null,
              "duration": 2089,
              "content_length": 2089,
              "download_url": null,
              "latest_media_location": {
                "location": 0,
                "timestamp": "2022-11-30T21:53:08.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/gZ4io6mfDgXKmu4l6ywQaQ==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "D6woGlmfUwL9prEqSKbXRA==",
              "file_name": "What People Crave And Growth Hacking Secrets",
              "description": "",
              "extension": "MP4",
              "file_size": 729010736,
              "pagelength": null,
              "duration": 890,
              "content_length": 890,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/D6woGlmfUwL9prEqSKbXRA==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "9D-xI_PT9o-t6hok3vY54w==",
              "file_name": "Expert Marketing & Sales Advice From Young Millionaire",
              "description": "",
              "extension": "MP4",
              "file_size": 997662158,
              "pagelength": null,
              "duration": 975,
              "content_length": 975,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/9D-xI_PT9o-t6hok3vY54w==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "m5tpU2vHxteKeKWSNbuL5w==",
              "file_name": "How To Optimize Paid Campaigns For Success",
              "description": "",
              "extension": "MP4",
              "file_size": 930212734,
              "pagelength": null,
              "duration": 368,
              "content_length": 368,
              "download_url": null,
              "latest_media_location": {
                "location": 0,
                "timestamp": "2022-12-01T20:10:55.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/m5tpU2vHxteKeKWSNbuL5w==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "Mal2YvAyq6w58yhSRi-ODA==",
              "file_name": "Tripwire Funnel Secrets",
              "description": "",
              "extension": "MP4",
              "file_size": 61740614,
              "pagelength": null,
              "duration": 473,
              "content_length": 473,
              "download_url": null,
              "latest_media_location": {
                "location": 0,
                "timestamp": "2022-11-30T21:53:48.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/Mal2YvAyq6w58yhSRi-ODA==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "ZEmSGaTk5dhUGn6zHrYwxQ==",
              "file_name": "Crazy Marketing Secrets & Affiliate Marketing Secrets",
              "description": "",
              "extension": "MP4",
              "file_size": 235421967,
              "pagelength": null,
              "duration": 1387,
              "content_length": 1387,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/ZEmSGaTk5dhUGn6zHrYwxQ==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "n4c-cxKSrCCwBBrCsZ18Fw==",
              "file_name": "Millionaire Investing Advice For Beginners",
              "description": "",
              "extension": "MP4",
              "file_size": 195073756,
              "pagelength": null,
              "duration": 695,
              "content_length": 695,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/n4c-cxKSrCCwBBrCsZ18Fw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "eBoiUNvf9gpEk0IZc-gZHg==",
              "file_name": "Best Marketing Strategies Ever - Powerful Marketing Advice",
              "description": "",
              "extension": "MP4",
              "file_size": 14855717,
              "pagelength": null,
              "duration": 848,
              "content_length": 848,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/eBoiUNvf9gpEk0IZc-gZHg==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "zj4ifRvxSjj7lOv9ZpxWuQ==",
              "file_name": "The Ultimate Sales Funnel Training",
              "description": "",
              "extension": "MP4",
              "file_size": 731034638,
              "pagelength": null,
              "duration": 7835,
              "content_length": 7835,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/zj4ifRvxSjj7lOv9ZpxWuQ==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "I3jOuo6fE1-nxYRTjiefng==",
              "file_name": "How To Beat All Competition Without Lowering Your Prices",
              "description": "",
              "extension": "MP4",
              "file_size": 19222977,
              "pagelength": null,
              "duration": 461,
              "content_length": 461,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/I3jOuo6fE1-nxYRTjiefng==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "4qx-yE3xYhoy-P-cmxHfHw==",
              "file_name": "Young Millionaire Rants",
              "description": "",
              "extension": "MP4",
              "file_size": 1409005306,
              "pagelength": null,
              "duration": 2178,
              "content_length": 2178,
              "download_url": null,
              "latest_media_location": {
                "location": 58,
                "timestamp": "2022-11-28T06:07:06.000Z"
              },
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/4qx-yE3xYhoy-P-cmxHfHw==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            },
            {
              "type": "file",
              "id": "cdAlsQnOv_yw7pRB2br-JA==",
              "file_name": "Cashvertising Knowledge",
              "description": "",
              "extension": "MOV",
              "file_size": 500863321,
              "pagelength": null,
              "duration": 491,
              "content_length": 491,
              "download_url": null,
              "latest_media_location": null,
              "stream_url": "/s/1367ec77ffdc235a722cb8ae321ef7bf/cdAlsQnOv_yw7pRB2br-JA==",
              "external_link_url": null,
              "audio_params": null,
              "kindle_data": null,
              "read_url": null,
              "subtitle_files": [],
              "processing": false
            }
          ]
        },

      ]
    }
  },
  mounted() {
    debugger
  }
}
</script>

<style scoped>

  .flex {
    display: flex;
    justify-content: center;
    align-items: center;
  }

</style>