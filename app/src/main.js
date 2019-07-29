import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "./axios"
//1.完整引入mint-ui
import MintUI from 'mint-ui'
//2.单引引入mint-ui样式
import Vant from 'vant';
import 'vant/lib/index.css';
import 'mint-ui/lib/style.css'
import { Search } from 'mint-ui';
import 'lib-flexible'
import { IndexBar, IndexAnchor } from 'vant';

import vueSwiper from 'vue-awesome-swiper'

import 'swiper/dist/css/swiper.css' 


Vue.use(IndexBar).use(IndexAnchor);
Vue.use(vueSwiper)
Vue.component(Search.name, Search);
//3.将mint-ui注册vue
Vue.use(MintUI);
Vue.use(Vant);
Vue.config.productionTip = false
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
