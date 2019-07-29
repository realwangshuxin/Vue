//src下将引入axios单独保存在一个文件中
//减少main.js代码量
//1.引入vue实例(es6语法import)，引模块可直接引，引文件要加路径,require时nodejs语法
import Vue from "vue"
//2.引入axios库
import axios from "axios"
//3.发送请求时保存session信息
axios.defaults.withCredentials=true
//4.设置请求基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
//5.将axios注册vue实例(放入vue的原型链上)
Vue.prototype.axios=axios
//6.在main.js引入axios文件
