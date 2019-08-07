<template>
    <div>
        <ul class="title">
            <li data-id="1" @click="first">全部</li>
            <li data-id="2" @click="second">碳酸</li>
            <li data-id="3" @click="third">酒精</li>
            <li data-id="4" @click="four">其他饮料</li>
        </ul>
        <swiper :options="swiperOption" style="margin:15px 15px">
        <swiper-slide>
            <img src="../img/jiu/1.png" alt="" class="tiny">
        </swiper-slide>
        <swiper-slide>
            <img src="../img/jiu/2.png" alt="" class="tiny">
        </swiper-slide>
         <swiper-slide>
            <img src="../img/jiu/3.png" alt="" class="tiny">
        </swiper-slide>
         <swiper-slide>
            <img src="../img/jiu/4.png" alt="" class="tiny">
        </swiper-slide>
         <swiper-slide>
            <img src="../img/jiu/5.png" alt="" class="tiny">
        </swiper-slide>
         <swiper-slide>
            <img src="../img/jiu/6.png" alt="" class="tiny">
        </swiper-slide>
        <!-- <div class="swiper-pagination" slot="pagination"></div> -->
      </swiper>
      <div class="big" v-show="page1">
          <div class="pro"  id="pro1" v-for="(elem,i) of this.list" :key="i">
                <img :src="'http://127.0.0.1:3000/'+elem.j_img" alt="" class="pro_img">
                <div class="pro_title">
                    <p>{{elem.j_title}}</p>
                    <p style="width: 3.4rem;font-size:18px;color:#ae2121">￥{{elem.j_price}}</p>
                </div>
            </div>
      </div>
       <div class="big" v-show="page2">
          <div class="pro"  id="pro1" v-for="(elem,i) of this.list2" :key="i">
                <img :src="'http://127.0.0.1:3000/'+elem.j_img" alt="" class="pro_img">
                <div class="pro_title">
                    <p>{{elem.j_title}}</p>
                    <p style="width: 3.4rem;font-size:18px;color:#ae2121">￥{{elem.j_price}}</p>
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
      <van-loading size="24px" vertical v-show="xianshi">加载中...</van-loading>
    </div>
</template>
<script>
export default {
     data() {
      return {
        swiperOption: {
          slidesPerView: 3,
          spaceBetween: 30,
          pagination: {
            el: '.swiper-pagination',
            clickable: true
          }
        },
        list:[],
        pno:1,
        xianshi:false,
        top:false,
        page1:true,
        list2:[],
        page2:false
      }
    },
    methods:{
        tosearch(){
            this.$router.push("/search")
        },
        toshouye(){
            this.$router.push("/")
        },
        totop(){
            document.documentElement.scrollTop = document.body.scrollTop = 0;
        },
        second(e){
            this.page1=false;
            this.page2=true;
            this.xianshi=false;
            // 加样式
            // 清除其他兄弟样式
            var a=e.target.parentElement.children
            for(var li of a){
                li.style.borderBottom=0
            }
            // a.children.style.borderBottom=0
            e.target.style.borderBottom="2px solid #ae2121"
            this.axios.get("jiu",{
                params:{
                    pno:3
                }
                }).then((res)=>{
                    this.list2=res.data.data
                })
        },
        first(e){
            this.page1=true
            this.page2=false;
            var a=e.target.parentElement.children
            for(var li of a){
                li.style.borderBottom=0
            }
            // a.children.style.borderBottom=0
            e.target.style.borderBottom="2px solid #ae2121"
        },
        third(e){

        },
        four(e){}
    },
    created(){
        // this.axios.get("jiu").then(res=>{
        //     console.log(res);
        //     this.list=res.data;
        //     console.log(this.list)
        // })
    },
    mounted(){
            // 缓存指针
            let _this = this;
            // 设置一个开关来避免重复请求数据
            let sw = true;
            // 此处使用node做了代理
            this.axios.get('jiu')
                .then((res)=>{
                    // console.log(res)
                    // console.log(JSON.parse(response.data).stories);
                    // 将得到的数据放到vue中的data
                    _this.list=res.data.data
                })
                .catch(function(error){
                    console.log(error);
                });
 
            // 注册scroll事件并监听
            window.addEventListener('scroll',()=>{
                // console.log(document.documentElement.clientHeight+'-----------'+window.innerHeight); // 可视区域高度
                // console.log( document.documentElement.scrollTop); // 滚动高度
                // console.log(window.innerHeight); // 文档高度
                // console.log(document.body.offsetHeight); // 文档高度
                if(document.documentElement.scrollTop>150){
                    this.top=true
                }else{
                    this.top=false
                }
                // 判断是否滚动到底部
                if(document.documentElement.scrollTop + window.innerHeight >= document.body.offsetHeight) {
                    // console.log(sw);
                    // 如果开关打开则加载数据
                    if(sw==true){
                        // 将开关关闭
                        sw = false;
                        this.pno++;
                        this.xianshi=true;
                        if(this.pno>4){
                            this.$toast("没有更多数据了")
                            this.xianshi=false
                            return
                        }
                        setTimeout(()=>{
                            this.axios.get("jiu",{
                            params:{
                                pno:this.pno
                            }
                        }).then((res)=>{
                                _this.list=_this.list.concat(res.data.data);
                                // 数据更新完毕，将开关打开
                                sw = true;
                            })
                            .catch(function(error){
                                console.log(error);
                            });  
                        },1500) 
                    }
                }
            });
        }
}
</script>
<style scoped>
.dhl{
    position:fixed;
    top: 70%;
    right: 6%;
}
.dh{
    width: 40px;height: 40px;
    margin-top: 10px
}
*{
    margin: 0;padding: 0
}
.big{
    padding: 15px;
    padding-top: 0;
    margin-top: 20px
}
.pro_title{
        width: 50%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        height: 78px
    }
    .pro_title>p{
        color: #000;
        /* line-height: 1.2em; */
        font-size: 14px;
        font-weight: 500;
        text-align: left;
    }
    .pro_title img{
        width: 32.5px;
        height: 32.5px;
        border-radius: 50%;
        margin-right: 10px;
    }
    .pro{
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 15px;
    }
    .pro_img{
        background-color: #f5f5f5;
        background-position: 50% 50%;
        background-repeat: no-repeat;
        background-size: 100%;
        width: 45%;
        height: 90px;
        border-radius: .16rem;
    }
.tiny{
    width:115px;
    height: 80px;
    border-radius: 10px
}
.title{
    width: 100%;
    height: 60px;
    display: flex;
    justify-content: space-around;
    font-size: 16px;
    align-items: center;
    /* padding-left: 15px; */
    border-bottom: 1px solid #ccc
    /* margin: 10px 15px; */
}
.title li{
    padding-bottom: 5px
}
.title li:first-child{
    border-bottom: 2px solid #ae2121;
    border-radius: 1px
}
</style>

