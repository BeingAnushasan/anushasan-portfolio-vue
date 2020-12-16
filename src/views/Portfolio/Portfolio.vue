<template>
  <v-container grid-list-xl>
    <v-layout row justify-center align-center wrap class="mt-4 pt-2">
      <v-flex
        v-for="portfolio in portfolios"
        :key="portfolio.src"
        xs12
        sm12
        md4
        lg4
        xl4
      >
        <v-card
          :to="'/portfolio/' + portfolio.title.toLowerCase()"
          hover
          flat
          color="transparent"
          height="230"
        >
          <v-card-title></v-card-title>
          <v-img
            :src="portfolio.src"
            aspect-ratio="2.75"
            height="130"
            contain
          ></v-img>
          <v-card-title primary-title class="justify-center">
            <v-flex text-xs-center subheading font-weight-bold>{{
              portfolio.title
            }}</v-flex>
          </v-card-title>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  metaInfo: {
    title: "Portfolio",
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
  data() {
    return {
      portfolios: [
        {
          src: "https://i.imgur.com/BIfQCr0.png",
          title: "Frontend"
        },

        {
          src: "https://i.imgur.com/WBh6wt6.png",
          title: "Backend"
        },
        {
          src: "https://i.imgur.com/hCJhZR5.png",
          title: "Mobile"
        }
      ]
    };
  }
};
</script>

<style lang="scss" scoped></style>
