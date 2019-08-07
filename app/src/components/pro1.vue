<template>
    <div>
        <div class="banner">
            <div class="star_div">
                <img :src="star" alt="" class="star" @click="starChange">
            </div>
        </div>
        <div class="txt">
            <p class="title">每日贴身穿着，对抗多种不适|HAPPYDRUG</p>
            <p class="price">￥148</p>
            <div class="count">
                已哆嗦2件
            </div>
        </div>
        <ul>
            <li>
                <img src="../img/pro/logo.jpg" alt="">
                <span style="margin-left:15px;">WHO BUY WHO HAPPY</span>
            </li>
            <li>
                <span style="color:#aaa;margin-right:25px;">已选</span>
                <span>请选择</span>
            </li>
        </ul>
        <img src="../img/pro/detail.jpg" alt="" style="width:100%">
        <van-goods-action>
            <van-goods-action-icon
                icon="chat-o"
                text="客服"
                @click="onClickIcon"
            />
            <van-goods-action-icon
                icon="cart-o"
                text="购物车"
                @click="onClickIcon"
                info=3
                id="add"
            />
            <van-goods-action-button
                type="warning"
                text="加入购物车"
                @click="onClickButton"
            />
            <van-goods-action-button
                type="danger"
                text="立即购买"
                @click="onClickButton"
            />
        </van-goods-action>
        
        <div class="xiangqing" id="xq">
            <img :src="'http://127.0.0.1:3000/'+img_url" alt="" class="slt">
            <div class="black"></div>
            <div class="type">
                <div class="wz">
                    <p>{{title}}</p>
                    <p class="price">￥{{price}}</p>
                </div>
                <div>
                    <ul class="kuanshi">
                        <li style="border:0;font-size:15px;font-weight:bold;margin-left:0">款式</li>
                        <li @click="changecolor('s')" id="s">S</li>
                        <li @click="changecolor('m')" id="m">M</li>
                        <li @click="changecolor('l')" id="l">L</li>
                    </ul>
                    <ul class="shuliang">
                        <li  style="border:0;font-size:15px;font-weight:bold;margin-left:0">数量</li>
                        <li @click="down">-</li>
                        <li>{{value}}</li>
                        <li @click="up">+</li>
                    </ul>
                    <button class="queding" @click="quexiao">确定</button>
                </div>
            </div>

        </div>
        <ul class="dhl">
          <li>
              <img src="../img/top.png" alt="" class="dh" v-show="top" @click="totop">
          </li>
          <li>
               <img src="../img/sousuo.png" alt="" class="dh" @click="tosearch">
          </li>
          <li>
               <img src="../img/shouye.png" alt="" class="dh" @click="toshouye">
          </li>
      </ul>

    </div>
</template>
<script>
export default {
    data(){
        return{
            star:require("../img/pro/star.png"),
            value:1,
            img_url:"img/1.jpg",
            title:"每日贴身穿着，对抗多种不适|HAPPYDRUG",
            price:148,
            size:"",
            info:2,
            top:true
        }
    },
    methods: {
        tosearch(){
            this.$router.push("/search")
        },
        toshouye(){
            this.$router.push("/")
        },
        totop(){
            document.documentElement.scrollTop = document.body.scrollTop = 0;
        },
        up(){
            this.value++
        },
        down(){
            if(this.value>1){
                this.value--;
            }
        },
        changecolor(i){
            var s=document.getElementById("s")
            var m=document.getElementById("m")
            var l=document.getElementById("l")
            if(i=="s"){
                s.style.background="#ae2121"
                m.style.background="#fff"
                l.style.background="#fff"
                this.size="S"
            }
            if(i=="m"){
                m.style.background="#ae2121"
                s.style.background="#fff"
                l.style.background="#fff"
                this.size="M"
            }
            if(i=="l"){
                l.style.background="#ae2121"
                m.style.background="#fff"
                s.style.background="#fff"
                this.size="L"
            }
        },
        quexiao(){
            var xq=document.getElementsByClassName("xiangqing")[0]
            xq.style.display="none";
            this.move();
            if(this.size==""){
                this.$toast("请选择款式");
                return;
            }
            this.axios.get("chart",{
                    params:{
                        count:this.value,
                        img_url:this.img_url,
                        title:this.title,
                        price:this.price,
                        size:this.size
                    }
                }
            ).then(res=>{
                console.log(res);
                if(res.data.code>0){
                 this.$toast("已加入购物车");
                 var add=document.getElementById("add");
                 this.info++;
                 console.log(add.info)
            }else{
               this.$toast("添加失败")
                 }
            })
        },
        onClickIcon() {
            // Toast('点击图标');
        },
        onClickButton() {
            // Toast('点击按钮');
            var xq=document.getElementsByClassName("xiangqing")[0]
            xq.style.display="block";
            this.stop();

            
        },
        starChange(){
            if(this.star==require("../img/pro/star.png")){
                this.star=require("../img/pro/star2.png")
            }else{
                this.star=require("../img/pro/star.png")
            }
        },
        /***滑动限制***/
      stop(){
        var mo=function(e){e.preventDefault();};
        document.body.style.overflow='hidden';
        document.addEventListener("touchmove",mo,false);//禁止页面滑动
      },
      /***取消滑动限制***/
      move(){
        var mo=function(e){e.preventDefault();};
        document.body.style.overflow='';//出现滚动条
        document.removeEventListener("touchmove",mo,false);
      }
  }
}
</script>
<style scoped>

.slt{
    width: 50%;
    position: fixed;
    top: 138px;left: 20px;
    border-radius: 10px;
    z-index:2;
}
.wz{
    text-align: left;
    font-weight: bold;
    padding-top: 90px;
    padding-left: 20px;
    font-size: 16px;
    margin-bottom: 50px;
}
.xiangqing{
    width: 100%;
    position: fixed;
    left: 0;
    top:0;
    /* height:0; */
    overflow: hidden;
    display: none;
    transition: all .5s linear
}
.black{
    width: 100%;
    height: 190px;
    background: rgba(0,0,0,.4);
}
ul{
    width: 100%;
    margin-top: 30px;
}
ul li{
    width: 100%;
    /* background: #fff;
    border-bottom: 1px solid #ccc; */
    padding-left: 20px;
    height: 40px;
    display: flex;
    align-items: center;
    font-size: 13px;
}
ul li img{
    width: 10%;
    border-radius: 50%;
}
.count{
    width: 100px;height: 40px;
    background-color: #f5f5f5;
    color:#8e8e8e;
    text-align: center;
    line-height: 40px;
    border-radius: 20px;
    font-size: 14px;
    font-weight: normal;
    position: absolute;
    top: 40px;
    right: 40px;
}
*{
    margin: 0;padding: 0;
}
.txt{
    width: 100%;
    height: 70px;
    font-weight: bold;text-align: left;
    margin: 15px 20px;
    position: relative;
}
.title{
    font-size: 18px;
    letter-spacing: 3px;
}
.price{
    color: #ae2121;
    font-size: 20px;
    margin-top: 6px;
}
.banner{
    width: 100%;
    height: 180px;
    background: url("../img/pro/1.jpg") center center no-repeat;
    background-size: cover;
    position: relative;
}
.star_div{
    width: 40px;height: 40px;
    background: rgba(0,0,0,.4);
    border-radius: 50%;
    position: absolute;
    top:10px ;
    right: 10px;
}
.star{
    width: 80%;
    margin: 3px auto
}
.type{
    width: 100%;
    background: #fff;
}
.type .kuanshi{
    width: 100%;
    background: #fff;
    height: 36px;
}
.kuanshi,.shuliang{
    display: flex;
    width: 100%;
}
.kuanshi li{
    width: 8%;
    border: 1px solid #ccc;
    margin-left: 10px;
    padding-left: 24px;
    text-align: center !important;
    border-radius: 5px;
}
.shuliang li{
    width: 8%;
    border: 1px solid #ccc;
    margin-left: 10px;
    padding-left: 24px;
    text-align: center !important;
    border-radius: 5px;
    font-size: 20px;
}
.queding{
    width: 100%;
    background: #ae2121;
    font-size: 15px;
    border: 0;
    outline: none;
    color: #fff;
    height: 50px;
    margin-top:170px
}
.dhl{
    position:fixed;
    top: 50%;
    left: 75%;
    z-index: 1000;
    border:0 !important;
    background: transparent !important
}
.dhl li{
    margin-top: 10px
}
.dhl li .dh{
    width: 40px;height: 40px !important;
    margin-top: 10px !important;
    border:0 !important;
    background-color: transparent !important
}
</style>

