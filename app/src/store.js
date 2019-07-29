import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  //vuex中全局共享数据
  state: {
    cartCount:0
  },
  //修改vuex全局共享数据(函数)
  mutations: {
    //购物车数量加1
    increment(state){
      state.cartCount++;
    },
    //先清空购物车数量
    clear(state){
      state.cartCount=0
    },
    //购物车数量增加指定值5
    updateCount(state,c){
      state.cartCount+=c;
    }
  },
  actions: {

  },
  //获取vuex中全局共享数据(函数)
  getters:{
    getCartCount:function(state){
      return state.cartCount
    }
  }
})
