<template>
  <v-layout column justify-center align-center class="mt-4 pt-2">
    <VueCompareImage
      class="hidden-md-and-down"
      hover
      :style="{ minWidth: '1300px' }"
      :sliderLineWidth="sliderLine"
      :handleSize="hSize"
      :leftImage="leftImage"
      :rightImage="rightImage"
      :sliderPositionPercentage="sliderPosition"
    />
    <VueCompareImage
      class="hidden-lg-and-up"
      hover
      :style="{ maxWidth: '400px' }"
      :sliderLineWidth="sliderLine"
      :handleSize="hSize"
      :leftImage="leftImage2"
      :rightImage="rightImage2"
      :sliderPositionPercentage="sliderPosition"
    />

    <br />

    <vue-typer class="headline" :repeat="0" text="Anushasan Poudel"></vue-typer>
    <vue-typer
      :text="title"
      :repeat="Infinity"
      :shuffle="false"
      initial-action="erasing"
      :pre-type-delay="70"
      :type-delay="70"
      :pre-erase-delay="1980"
      :erase-delay="150"
      erase-style="select-back"
      :erase-on-complete="false"
      caret-animation="smooth"
    ></vue-typer>
    <br />
    <v-flex xs12 sm6 md4 lg4 xl4>
      <v-card flat color="transparent" max-width="500">
        <v-card-title primary-title>
          <div>
            <h3 class="headline mb-0">
              <span>About</span>
              <span class="green--text">Me</span>
            </h3>
            <div>
              <p v-html="message"></p>
            </div>
          </div>
        </v-card-title>

        <v-card-actions class="hidden-sm-and-down">
          <v-btn
            v-for="icon in icons"
            :key="icon.icon"
            fab
            dark
            outline
            color="green"
            :href="icon.href"
            target="_blank"
          >
            <v-icon dark>{{ icon.icon }}</v-icon>
          </v-btn>
        </v-card-actions>

        <v-card-actions class="hidden-md-and-up justify-center">
          <v-btn
            v-for="icon in icons"
            :key="icon.icon"
            small
            fab
            dark
            outline
            color="green"
            :href="icon.href"
            target="_blank"
          >
            <v-icon dark>{{ icon.icon }}</v-icon>
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-flex>
  </v-layout>
</template>

<script>
import { VueTyper } from "vue-typer";
import VueCompareImage from "vue-compare-image";
// import axios from "axios";

export default {
  metaInfo: {
    title: "Home",
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
      { property: "og:description", content: "Anushasan Poudel's Portfolio" }
    ]
  },
  components: {
    "vue-typer": VueTyper,
    VueCompareImage
  },
  data() {
    return {
      icons: [],
      message:
        'Hello! I’m Anushasan Poudel. I\'m a programmer who is passionate about <span class="green--text font-weight-bold">Technology</span>, building great software, fighting for simplicity over complexity. When I\'m not Coding, I\'m Learning. Btw I use <span class="blue--text font-weight-bold">Arch...</span>',
      showDefaultMessage: true,
      title: [],
      leftImage: "",
      rightImage: "",
      leftImage2: "",
      rightImage2: "",
      sliderLine: 0,
      hSize: 0,
      sliderPosition: 0.5
    };
  },
  created() {
    this.$axios
      .get(
        "https://raw.githubusercontent.com/BeingAnushasan/anushasan-portfolio-vue/master/data.json"
      )
      .then(res => {
        this.updateData(res.data.data);
      });
  },
  methods: {
    updateData(data) {
      console.log(this.message);
      this.title = data.homeComponent.title;
      this.leftImage = data.homeComponent.leftImage;
      this.rightImage = data.homeComponent.rightImage;
      this.leftImage2 = data.homeComponent.leftImage2;
      this.rightImage2 = data.homeComponent.rightImage2;
      this.icons = data.homeComponent.icons;
      this.showDefaultMessage = data.homeComponent.showDefaultMessage;
      this.message = data.homeComponent.message;
    }
  }
};
</script>
<style>
@keyframes rocking {
  0%,
  100% {
    transform: rotateZ(-10deg);
  }

  50% {
    transform: rotateZ(10deg);
  }
}

.vue-typer {
  font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
}
.vue-typer .custom.char.typed {
  color: green;
}
.vue-typer .custom.char.selected {
  color: #e91e63;
}

.vue-typer .custom.caret {
  animation: rocking 1s ease-in-out 0s infinite;
}
.vue-typer .custom.caret.typing {
  background-color: green;
}
.vue-typer .custom.caret.selecting {
  display: inline-block;
  background-color: #e91e63;
}
</style>
