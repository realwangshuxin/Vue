<template>
    <div class="bg">
        <div class="top">
            <div class="name">
                <img src="../../img/mine/toux.png" alt="">
                <span>黑客_YymfD9</span>
            </div>
            <div class="title">
                <div>
                    <img src="../../img/mine/icon1.png" alt="">
                    <p>待发货</p>
                </div>
                <div style="position:relative" @click="shouhuo">
                    <img src="../../img/mine/icon2.png" alt="">
                    <p>待收货</p>
                    <div class="red">1</div>
                </div>
                <div>
                    <img src="../../img/mine/icon3.png" alt="">
                    <p>退货</p>
                </div>
                <img src="../../img/mine/line.png" alt="" class="line">
                <div>
                    <img src="../../img/mine/icon4.png" alt="">
                    <p>全部订单</p>
                </div>
            </div>
        </div>
            <img src="../../img/mine/banner.jpg" alt="" class="banner">
        <ul>
            <li>
                <img src="../../img/mine/icon5.png" alt="">
                <span>我的优惠券</span>
            </li>
            <li>
                <img src="../../img/mine/icon6.png" alt="">
                <span>我关注的</span>
            </li>
            <li>
                <img src="../../img/mine/icon7.png" alt="">
                <span>收货地址</span>
            </li>
            <li>
                <img src="../../img/mine/icon8.png" alt="">
                <span>浏览记录</span>
            </li>
        </ul>
    </div>
</template>
<script>
export default {
    data(){
        return{

        }
    },
    methods:{
        shouhuo(){
            this.$router.push("/wuliu")
        }
    }
}
</script>
<style scoped>
.red{
    width: 15px;
    height: 15px;
    border-radius: 50%;
    background: #ae2121;
    color: #fff;
    line-height: 15px;
    position: absolute;
    top: 0px;
    left: 30px
}
*{
    margin: 0;padding: 0
}
    .bg{
    background: #f2f2f2;
    height:667px;
    }
    .top{
        width: 100%;
        background:rgba(0,0,0,.2) url("../../img/mine/bg.png") center center no-repeat;
        background-size: cover;
        height: 160px;
        position: relative;
        overflow: visible;
    }
    .name{
        display: flex;
        align-items: center;
        position: absolute;
        top: 30px;left: 20px
    }
    .name img{
        width: 35px;
        height: 35px;
        border-radius: 50%;
        margin-right: 10px;
    }
    .name span{
        font-size:23px;
        color: #fff;
    }
    .title{
        width: 90%;
        height: 90px;
        background: #fff;
        border-radius: 6px;
        display: flex;
        justify-content: space-around;
        align-items: center;
        position: absolute;
        top: 87px;
        left: 19px;
         box-shadow: 2px 2px 1px rgba(0,0,0,.1)
    }
    .title img{
        width: 60%;
    }
    .title p{
        font-size: 12px;
    }
    .title .line{
        width: 3%;
        height: 70%;
    }
    .banner{
        width: 90%;
        height: 80px;
        border-radius: 6px;
        margin-top: 30px;
    }
    ul{
        width: 90%;
        background: #fff;
        margin: 10px auto;
    }
    ul li{
        height: 50px;
        border-bottom: 1px solid rgb(230, 230, 230);
        border-radius: 6px;
        text-align: left;
        display: flex;
        align-items: center;
        font-size: 13px;
        padding-left:10px; 
        box-shadow: 2px 2px 1px rgba(0,0,0,.1)
    }
    ul li img{
        margin-right: 6px;
    }
</style>


