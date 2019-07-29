import Vue from 'vue'
import Router from 'vue-router'
import gs from './components/gs.vue'
import login from './components/login.vue'
import a from './components/a.vue'
import pro1 from './components/pro1.vue'
import pro2 from './components/pro2.vue'
import wuliu from './components/common/wuliu.vue'
import chart from './components/common/chart.vue'
import search from './components/common/search.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/gs',
      component: gs
    },
    {
      path: '/a',
      component: a
    },
    {
      path: '/pro1',
      component: pro1
    },
    {
      path: '/pro2',
      component: pro2
    },
    {
      path: '/chart',
      component: chart
    },
    {
      path: '/wuliu',
      component: wuliu
    },
    {
      path: '/search',
      component: search
    },
    // {
    //   path: '/',
    //   name: 'home',
    //   component: Home
    // },
    {
      path: '/login',
      component: login
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})

/* <i class = 'iconfont icon-search1187938easyiconnet'> */
