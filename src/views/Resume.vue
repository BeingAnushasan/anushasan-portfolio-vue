<template>
  <v-layout row justify-center align-center wrap class="mt-4 pt-2">
    <v-flex xs12 sm12 md5 lg6 xl6 class="mt-4 pt-4">
      <h2 class="mb-4 pl-4 pt-2">Education</h2>
      <v-card-text class="py-0">
        <v-timeline align-top dense>
          <v-timeline-item color="green" small>
            <v-layout pt-3>
              <v-flex xs4>
                <div class="caption font-weight-bold green--text">
                  Nov 2016 -
                </div>
                <div class="caption font-weight-bold green--text">Dec 2020</div>
              </v-flex>
              <v-flex class="pl-2">
                <strong>Electronics & Communications Engineering</strong>
                <div class="caption mb-2">IOE WRC, Tribhuvan University</div>
              </v-flex>
            </v-layout>
          </v-timeline-item>
        </v-timeline>
      </v-card-text>
    </v-flex>
    <v-flex xs12 sm12 md4 lg6 xl6 class="mt-4 pt-2">
      <h2 class="mb-4 pl-4">Experience</h2>
      <v-card-text class="py-0">
        <v-timeline align-top dense>
          <v-timeline-item color="green" small>
            <v-layout pt-3>
              <v-flex xs4>
                <div class="caption font-weight-bold green--text">June 2023 -</div>
                <div class="caption font-weight-bold green--text">Present</div>
              </v-flex>
              <v-flex class="pl-2">
                <strong>Java Developer</strong>
                <div class="caption mb-2">Smart Data Solutions</div>
              </v-flex>
            </v-layout>
          </v-timeline-item>

          <v-timeline-item color="green" small>
            <v-layout pt-3>
              <v-flex xs4>
                <div class="caption font-weight-bold green--text">
                  July 2021 -
                </div>
                <div class="caption font-weight-bold green--text">
                  June 2023
                </div>
              </v-flex>
              <v-flex class="pl-2">
                <strong>Software Engineer II</strong>
                <div class="caption mb-2">Cotiviti Nepal Pvt. Ltd.</div>
              </v-flex>
            </v-layout>
          </v-timeline-item>
        </v-timeline>
      </v-card-text>
    </v-flex>
    <v-layout row justify-center align-center wrap class="mt-4 pt-2">
      <v-flex xs12 sm12 md4 lg5 xl5 class="mx-2 pt-4">
        <h2>
          <span>Coading</span>

          <span class="green--text">Skills</span>
        </h2>
        <br />
        <strong>Java</strong>
        <v-progress-linear
          v-model="buffer1"
          :buffer-value="bufferValue"
          color="green"
          height="16"
        ></v-progress-linear>
        <strong>Spring Boot</strong>
        <v-progress-linear
          v-model="buffer2"
          :buffer-value="bufferValue"
          color="green"
          height="16"
        ></v-progress-linear>
        <strong>Angular</strong>
        <v-progress-linear
          v-model="buffer3"
          :buffer-value="bufferValue"
          color="green"
          height="16"
        ></v-progress-linear>
        <strong>Bash</strong>
        <v-progress-linear
          v-model="buffer5"
          :buffer-value="bufferValue"
          color="green"
          height="16"
        ></v-progress-linear>
      </v-flex>
      <v-flex xs12 sm12 md4 lg5 xl5 class="mx-2 pt-4">
        <h2>
          <span>IT Operations </span>
          <span class="green--text">Skills</span>
        </h2>
        <br />
        <strong>Linux</strong>
        <v-progress-linear
          v-model="buffer6"
          :buffer-value="bufferValue"
          color="green"
          height="16"
        ></v-progress-linear>
        <strong>Docker</strong>
        <v-progress-linear
          v-model="buffer8"
          :buffer-value="bufferValue"
          color="green"
          height="16"
        ></v-progress-linear>
      </v-flex>
      <div class="mt-4 pt-2">
        <v-btn :href="resumeLink" target="_blank" color="green" dark large>
          Download Resume
          <v-icon right dark>fas fa-file-download</v-icon>
        </v-btn>
      </div>
    </v-layout>
  </v-layout>
</template>

<script>
export default {
  metaInfo: {
    title: "Resume",
    titleTemplate: "%s ←  Anushasan",
    meta: [
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      { name: "description", content: "Anushasan Poudel's Portfolio" },
      { charset: "utf-8" },
      { property: "og:title", content: "Anushasan Poudel" },
      { property: "og:site_name", content: "Anushasan Poudel" },
      { property: "og:type", content: "website" },
      { property: "og:url", content: "https://anushasanpoudel.com.np" },
      {
        property: "og:image"
      },
      { property: "og:description", content: "Anushasan Poudel's Resume" }
    ]
  },
  data() {
    return {
      value: 0,
      buffer1: 0,
      buffer2: 0,
      buffer3: 0,
      buffer4: 0,
      buffer5: 0,
      buffer6: 0,
      buffer7: 0,
      buffer8: 0,
      bufferValue: 100,
      interval: 0,
      resumeLink: ""
    };
  },

  created() {
    this.$axios
      .get(
        "https://raw.githubusercontent.com/BeingAnushasan/anushasan-portfolio-vue/master/data.json"
      )
      .then(res => this.updateData(res.data.data));
  },

  mounted() {
    this.startBuffer();
  },

  beforeDestroy() {
    clearInterval(this.interval);
  },

  methods: {
    startBuffer() {
      this.interval = setInterval(() => {
        this.buffer1 = 71;
        this.buffer2 = 57;
        this.buffer3 = 52;
        this.buffer4 = 58;
        this.buffer5 = 45;
        this.buffer6 = 55;
        this.buffer7 = 70;
        this.buffer8 = 60;
      }, 800);
    },
    updateData(data) {
      this.resumeLink = data.resumeComponent.resumeLink;
    }
  }
};
</script>
<style></style>
