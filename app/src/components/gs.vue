<template>
    <div>
        <!-- 主页面板 -->
        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="zhuye">
               <zhuye></zhuye>
            </mt-tab-container-item>
            <mt-tab-container-item id="fenlei">
               <fenlei></fenlei>
            </mt-tab-container-item>
            <mt-tab-container-item id="gouwuche">
               <chart></chart>
            </mt-tab-container-item>
            <mt-tab-container-item id="xiaoxi">
               <msg></msg>
            </mt-tab-container-item>
            <mt-tab-container-item id="wode">
               <mine></mine>
            </mt-tab-container-item>
        </mt-tab-container>
        <!-- 底部导航栏 -->
        <mt-tabbar v-model="selected" fixed>
            <mt-tab-item id="zhuye" @click.native="changeState(0)">
                <tabbar :focused="currentIndex[0].isSelected" :selectedImg="require('../img/icon/home2.png')" 
                :normalImg="require('../img/icon/home.png')"></tabbar>
                鬼市
            </mt-tab-item>
            <mt-tab-item id="fenlei" @click.native="changeState(1)">
                <tabbar :focused="currentIndex[1].isSelected" :selectedImg="require('../img/icon/liwu2.png')" 
                :normalImg="require('../img/icon/liwu.png')"></tabbar>
                分类
            </mt-tab-item>
            <mt-tab-item id="gouwuche" @click.native="changeState(2)">
                <tabbar :focused="currentIndex[2].isSelected" :selectedImg="require('../img/icon/shop2.png')" 
                :normalImg="require('../img/icon/shop.png')"></tabbar>
                购物车
            </mt-tab-item>
            <mt-tab-item id="xiaoxi" @click.native="changeState(3)">
                <tabbar :focused="currentIndex[3].isSelected" :selectedImg="require('../img/icon/msg2.png')" 
                :normalImg="require('../img/icon/msg.png')"></tabbar>
                消息
            </mt-tab-item>
            <mt-tab-item id="wode" @click.native="changeState(4)">
                <tabbar :focused="currentIndex[4].isSelected" :selectedImg="require('../img/icon/user2.png')" 
                :normalImg="require('../img/icon/user.png')"></tabbar>
                我的
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<script>
import tabbar from "./common/tabbar.vue"
import zhuye from "./common/zhuye.vue"
import fenlei from "./common/fenlei.vue"
import mine from "./common/mine.vue"
import chart from "./common/chart.vue"
import msg from "./common/msg.vue"
export default {
    data(){
        return {
            selected:"zhuye",
            currentIndex:[
                {isSelected:true},
                {isSelected:false},
                {isSelected:false},
                {isSelected:false},
                {isSelected:false}
            ]
        }
    },
    components:{
        tabbar,
        zhuye,
        fenlei,
        mine,
        chart,
        msg
    },
    methods:{
        changeState(n){
            //1.n当前按钮下标
            //2.创建循环数据
            //3.如果当前下标与参数下标一致  true
            //4.其他元素  false
            for(var i=0;i<this.currentIndex.length;i++){
                if(n==i){
                    this.currentIndex[i].isSelected=true
                }else{
                    this.currentIndex[i].isSelected=false
                }
            }
            if(n==2 || n==3 || n==4){
                var session=localStorage.getItem("session")
                if(!session){
                    this.$router.push("/login")
            }
            }
        }
    }
}
</script>
<style scoped>

    /* 未选中颜色样式 */
    .mint-tabbar > .mint-tab-item{
        color: #999999;
    }
    /* 选中文字颜色 */
    .mint-tabbar > .mint-tab-item.is-selected{
        background: transparent;
        color: #d81e06
    }
</style>


