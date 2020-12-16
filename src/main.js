import Vue from 'vue'
import './plugins/vuetify'
import App from './App.vue'
import router from './router'
import Axios from "axios";


Vue.config.productionTip = false
// const isProd = process.env.NODE_ENV === 'production'
Vue.prototype.$axios = Axios;

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')

