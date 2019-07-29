<template>
    <div >
        <div style="width:290px;padding:20px;margin-left:85px;overflow:hidden"  >
            <!-- <prince :is="currentTab" keep-alive></prince> -->
            <f1 id="d1"></f1>
            <f2 id="d2"></f2>
            <f3 id="d3"></f3>
            <f4 id="d4"></f4>
            <f5 id="d5"></f5>
        </div>
        <div style="position:fixed;top:0px;left:0px" @scroll="move">
            <van-sidebar v-model="activeKey">
            <van-sidebar-item title="吃吃喝喝" @click="tab('f1')"/>
            <van-sidebar-item title="美妆个护" @click="tab('f2')"/>
            <van-sidebar-item title="书摊" @click="tab('f3')"/>
            <van-sidebar-item title="娱乐趣味" @click="tab('f4')"/>
            <van-sidebar-item title="居家生活" @click="tab('f5')"/>
            </van-sidebar>
        </div>
        <br><br><br>
        <br><br><br>
        <br><br><br>
        <br><br><br>
        <br><br><br>
        <br><br><br>
        <br><br><br>
        
        
        
    </div>
</template>
<script>
import f1 from "./f1.vue"
import f2 from "./f2.vue"
import f3 from "./f3.vue"
import f4 from "./f4.vue"
import f5 from "./f5.vue"
export default {
    data(){
        return {
            activeKey:0,
            currentTab:f1,
            scroll:0
        }
    },
    components:{
        f1,f2,f3,f4,f5
    },
    watch:{
        scroll(){
            this.scroll =  document.documentElement.scrollTop
            console.log(this.scroll)
        }
    },
    methods:{
        move(e){
            console.log(e.srcElement.scrollTop)
            console.log(123)
        },
        tab(ff){
            this.currentTab=ff;
            var d1=document.getElementById("d1")
            var d2=document.getElementById("d2")
            var d3=document.getElementById("d3")
            var d4=document.getElementById("d4")
            var d5=document.getElementById("d5")
            if(ff=='f1'){
                document.documentElement.scrollTop=0
            }
            if(ff=='f2'){
                // console.log(d2.offsetTop)
                document.documentElement.scrollTop=200
                console.log(document.body.scrollTop)
                console.log(document.documentElement.scrollTop)
            }
            if(ff=='f3'){
                document.documentElement.scrollTop=400
                console.log(d3.offsetTop)
            }
            if(ff=='f4'){
                document.documentElement.scrollTop=600
                console.log(d4.offsetTop)
            }
            if(ff=='f5'){
                document.documentElement.scrollTop=800
                // d5.style.display=""
                console.log(d5.offsetTop)
            }
        }
    }
}
</script>

<style scoped>

.pro_parent{
    display: flex;
    flex-wrap: wrap;
    width: 96%;
    justify-content: space-between;
    margin-left: -15px;
    margin-top: 10px;
}
.pro{
    width: 30%;
    font-size: 13px;
}
.pro_img{
    width: 60%
}
*{
    margin: 0;
    padding: 0
}
.title{
    width: 86%;
    height: 65px;
    background-image:url('../../img/chihe/1.png');
    background-size: contain;
    background-repeat: no-repeat;
    position: relative;
}
.txt{
    position: absolute;
    top:50%;
    left: 50%;
    color: #fff;
    width: 100%;
    margin-left: -50%;
    margin-top: -10%
}
.van-sidebar{
    height: 100%;
    border-radius:3px;
}
.van-sidebar-item{
    padding: 25px 50px 30px 30px;
    font-size: 14px;
    color: #333;
    font-weight: bold
}
.van-sidebar-item--select{
    border-left:5px solid#d81e06
}
.title2{
    background-image:url('../../img/chihe/2.png');
}
.title3{
    background-image:url('../../img/chihe/3.png');
}
.title4{
    background-image:url('../../img/chihe/4.png');
}
.title5{
    background-image:url('../../img/chihe/5.png');
}
</style>

