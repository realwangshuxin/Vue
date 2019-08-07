<template>
    <div>
        <div class="titlebar">
        <!-- <mt-search
        v-model="value"
        cancel-text="取消"
        placeholder="搜索">
        </mt-search> -->
        <span style="border-bottom:2px solid #d81e06">推荐</span>
        <span class="hot">热门</span>
        <router-link to="/search">
            <img src="../../img/zhuye/search.png" alt="" class="search" @click="searchAll">
        </router-link>
        </div>

        <!-- swiper -->
        <div class="banner">
            <swiper :options="swiperOption" class="swiper">
            <swiper-slide>
                <img src="../../img/zhuye/banner1.jpg" alt="">
            </swiper-slide>
            <swiper-slide>
                <img src="../../img/zhuye/banner2.jpg" alt="">
            </swiper-slide>
            <swiper-slide>
                <img src="../../img/zhuye/banner3.jpg" alt="">
            </swiper-slide>
            <swiper-slide>
                <img src="../../img/zhuye/banner4.jpg" alt="">
            </swiper-slide>
            <swiper-slide>
                <img src="../../img/zhuye/banner5.jpg" alt="">
            </swiper-slide>
            <swiper-slide>
                <img src="../../img/zhuye/banner6.jpg" alt="">
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination">
                 <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 4"></span>
                <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 5"></span>
                <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 6"></span>
            </div>
            
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div> -->
        </swiper>
        </div>
        <div class="swiper2_div">
            <swiper :options="swiperOption2" class="swiper2">
                <swiper-slide>
                    <img src="../../img/zhuye/img1.jpg" alt="">
                    <div class="project_name">夏日T恤</div>
                </swiper-slide>
                <swiper-slide>
                     <img src="../../img/zhuye/img2.jpg" alt="">
                     <div class="project_name">香水专场</div>
                </swiper-slide>
                <swiper-slide>
                     <img src="../../img/zhuye/img3.jpg" alt="">
                     <div class="project_name">胶片相机</div>
                </swiper-slide>
                <swiper-slide>
                     <img src="../../img/zhuye/img4.jpg" alt="">
                     <div class="project_name">助眠专场</div>
                </swiper-slide>
                <swiper-slide>
                     <img src="../../img/zhuye/img5.jpg" alt="">
                     <div class="project_name">闺蜜聚会</div>
                </swiper-slide>
            <!-- <div class="swiper-pagination" slot="pagination"></div> -->
        </swiper>
        </div>

        <div class="div_title">
            <h4>新品</h4>
            <p>早拥有，早显摆</p>
        </div>
        <div style="padding:15px;padding-top:0;border-bottom: 2px solid rgb(226, 226, 226);">
            <div class="pro" @click="pro1" id="pro1">
                <img src="../../img/zhuye/pro1.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>亲手拼装属于自己的相机|135胶片复古手拼相机</p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/touxiang.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">太空野狗</p>
                    </div>
                </div>
            </div>
            <div class="pro" style="margin-top:20px" @click="pro2" id="pro2">
                <img src="../../img/zhuye/pro2.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>用山崎威士忌作为基酒，三得利限定威士忌起泡梅酒</p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/img5.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">超级礼物</p>
                    </div>
                </div>
            </div>
            <div class="pro" style="margin-top:20px">
                <img src="../../img/zhuye/pro3.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>红唇与月球拼贴印花艺术家联名T恤|KON</p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/peo3.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">KON潮旅装备</p>
                    </div>
                </div>
            </div>
            <div class="pro" style="margin-top:20px">
                <img src="../../img/zhuye/pro4.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>权力的游戏限定眼影盘|Urban Decay X Game Of Thrones </p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/peo5.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">Picahho</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="div_title">
            <h4>推荐卖家</h4>
            <p>黑市最牛卖家，你值得拥有</p>
        </div>
        <div class="swiper3_div">
            <swiper :options="swiperOption2" class="swiper3">
                <swiper-slide>
                    <div class="item">
                        <img src="../../img/zhuye/bg1.jpg" alt="" class="item_img">
                        <div class="item_txt">
                            <p class="item_name">CONPCONP</p>
                            <p class="item_gs">来自建筑服装公司CONPCONP</p>
                            <p class="item_tag"><span>概念</span><span>新潮</span></p>
                            <button>关注</button>
                        </div>
                        <img src="../../img/zhuye/tou1.jpg" alt="" style="width:60px;height:60px;border-radius:50%;position:absolute;top:15%;left:34%">
                    </div>
                </swiper-slide>
                <swiper-slide style="margin-left:30px">
                    <div class="item">
                        <img src="../../img/zhuye/bg2.jpg" alt="" class="item_img" style="width:130%;overflow:hidden">
                        <div class="item_txt">
                            <p class="item_name">别闹BIZZCUT</p>
                            <p class="item_gs">特立独行的艺术家</p>
                            <p class="item_tag"><span>恋物癖</span><span>嘻哈</span><span>艺术</span></p>
                            <button>关注</button>
                        </div>
                        <img src="../../img/zhuye/tou2.jpg" alt="" style="width:60px;height:60px;border-radius:50%;position:absolute;top:15%;left:34%">
                    </div>
                </swiper-slide>
                <swiper-slide style="margin-left:40px">
                    <div class="item">
                        <img src="../../img/zhuye/bg3.jpg" alt="" class="item_img" style="width:105%">
                        <div class="item_txt">
                            <p class="item_name">MIMI FANTASY</p>
                            <p class="item_gs">小有态度的原创内衣</p>
                            <p class="item_tag"><span>兴奋</span><span>小婊子</span><span>超级礼物</span></p>
                            <button>关注</button>
                        </div>
                        <img src="../../img/zhuye/tou3.jpg" alt="" style="width:60px;height:60px;border-radius:50%;position:absolute;top:15%;left:34%">
                    </div>
                </swiper-slide>
                <swiper-slide style="margin-left:40px">
                    <div class="item">
                        <img src="../../img/zhuye/bg4.jpg" alt="" class="item_img" style="width:105%">
                        <div class="item_txt">
                            <p class="item_name">APRILPOOLDAY</p>
                            <p class="item_gs">泰国独立泳衣品牌</p>
                            <p class="item_tag"><span>复古</span><span>实穿</span><span>百搭</span></p>
                            <button>关注</button>
                        </div>
                        <img src="../../img/zhuye/tou4.jpg" alt="" style="width:60px;height:60px;border-radius:50%;position:absolute;top:15%;left:34%">
                    </div>
                </swiper-slide>
                <swiper-slide style="margin-left:40px">
                    <div class="item">
                        <img src="../../img/zhuye/bg5.jpg" alt="" class="item_img" style="width:105%">
                        <div class="item_txt">
                            <p class="item_name">M’s微醺时光酒屋</p>
                            <p class="item_gs">为你寻一杯甜蜜的酒</p>
                            <p class="item_tag"><span>高颜值</span><span>好喝</span></p>
                            <button>关注</button>
                        </div>
                        <img src="../../img/zhuye/tou5.jpg" alt="" style="width:60px;height:60px;border-radius:50%;position:absolute;top:15%;left:34%">
                    </div>
                </swiper-slide>
                <swiper-slide style="margin-left:0px"></swiper-slide>
                <swiper-slide></swiper-slide>
        </swiper>
        </div>
        <div class="div_title">
            <h4>热门分类</h4>
            <p>有怪癖就能满足</p>
        </div>
            <div style="padding:15px;padding-top:0;border-bottom:1px solid #ccc">
            <div class="fenlei">
            <div class="fenlei_txt" style="margin-bottom:10px">
                <img src="../../img/zhuye/fenlei1.png" alt="">
                <p>吃吃喝喝</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei2.png" alt="">
                <p>美妆个护</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei3.png" alt="">
                <p>书摊</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei4.png" alt="">
                <p>居家生活</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei5.png" alt="">
                <p>穿搭配饰</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei6.png" alt="">
                <p>娱乐趣味</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei7.png" alt="">
                <p>烟民特供</p>
            </div>
            <div class="fenlei_txt">
                <img src="../../img/zhuye/fenlei8.png" alt="">
                <p>成人情趣</p>
            </div>
        </div>
        </div>
        <div  style="padding:15px;padding-top:0;margin-bottom:15px;">
            <div class="prod" v-for="(item,i) of list" :key="i">
                <img :src="'http://127.0.0.1:3000/'+item.p_img" alt="" class="prod_img">
                <p class="prod_title">{{item.p_title}}</p>
                <div class="prod_name">
                    <img :src="'http://127.0.0.1:3000/'+item.p_img_t" alt="" style="width:39px;height:39px;border-radius:50%">
                    <div>{{item.p_name}}</div>
                    <div class="prod_tag">{{item.p_tag}}</div>
                </div>
            </div>
        </div>
        <ul class="dhl">
          <li>
              <img src="../../img/top.png" alt="" class="dh" v-show="top" @click="totop">
          </li>
          <li>
               <img src="../../img/sousuo.png" alt="" class="dh" @click="tosearch">
          </li>
          <li>
               <img src="../../img/shouye.png" alt="" class="dh" @click="toshouye">
          </li>
      </ul>
        <br><br><br>
    </div>
</template>
<script>
export default {
    data(){
        return {
            swiperOption: {
          spaceBetween: 30,
          centeredSlides: true,
          autoplay: {
            delay: 2500,
            disableOnInteraction: false
          },
          pagination: {
            el: '.swiper-pagination',
            clickable: true
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
          }
        },
        swiperOption2: {
          slidesPerView: 3,
          spaceBetween: 30,
          freeMode: true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true
          }
        },
        list:[],
        top:true
        }
    },
    props:{

    },
    created(){
        this.loadMore();
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
        loadMore(){
            this.axios.get("pro").then(result=>{
                console.log(result);
                this.list=result.data;
                console.log(this.list)
            })
        },
        pro1(){
            this.$router.push("/pro1")
        },
        pro2(){
            this.$router.push("/pro2")
        },
        searchAll(){
            this.$router.push("/search")
        }
    }
}
</script>
<style scoped>
.dhl{
    position:fixed;
    top: 50%;
    right: 6%;
    z-index: 1000
}
.dh{
    width: 40px;height: 40px;
    margin-top: 10px
}
    .prod{
        width: 100%;
        overflow: hidden;
        margin-top: 15px
    }
    .prod_img{
        width: 100%
    }
    .prod_name{
        width: 100%;
        display: flex;
        color: #8e8e8e;
        overflow: hidden;
        font-size: 12px;
        align-items: center;
        margin-top: 10px;
    }
    .prod_name div{
        margin-left: 10px;
    }
    .prod_tag{
        margin-left:180px !important;
        background: #e7e7e7;
        padding: 3px;
        border-radius: 4px
    }
    .prod_title{
        font-size: 15px;
        font-weight: 700;
        overflow: hidden;
        margin-top: 10px
    }
    .fenlei{
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .fenlei_txt{
        width: 25%;
    }
    .fenlei_txt>img{
        width: 90%
    }
    .fenlei_txt>p{
        margin-top: .2133rem;
        font-size: 13px;
        text-align: center;
        color: #000;
    }
    .item_txt{
        width: 100%;
        margin-top: 25px;
        overflow:hidden;
    }
    .item_name{
        text-align: center;
        margin: .533rem .267rem 0;
        text-overflow: ellipsis;
        font-size: 16px;
        line-height: 1em;
        white-space: nowrap;
        color: #000;
        margin-top: 10px;
    }
    .item_gs,.item_tag span{
        text-align: center;
        margin: .16rem .267rem 0;
        text-overflow: ellipsis;
        white-space: nowrap;
        font-size: 12px;
        line-height: .32rem;
        color: #8e8e8e;
        height: .32rem;
        margin-top: 10px;
    }
    .item_tag{
        margin-top: 10px;
    }
    .item_txt button{
        /* padding:10px; */
        height: 25px;
        width: 50px;
        font-size: 13px;
        background: 0;
        outline: none;
        border: 1px solid #000;
        text-align: center;
        line-height: 10px;
        border-radius:4px;
        margin-top: 10px;
    }
    .item{
        width:150px;
        height: 218px;
        padding: 10px;
        position: relative;
        padding-top:0;
        overflow:hidden;
        box-shadow: 0 1px 1px rgba(0,0,0,.2);
    }
    .item_img{
        width: 100%;
        border-radius: 0 !important;
        border-top-left-radius: 5px !important;
        border-top-right-radius: 5px !important;
    }
    .pro_title{
        width: 50%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
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
    }
    .pro_img{
        background-color: #f5f5f5;
        background-position: 50% 50%;
        background-repeat: no-repeat;
        background-size: 100%;
        width: 45%;
        height: 100%;
        border-radius: .16rem;
    }
    *{
        margin: 0;padding: 0;
    }
    .div_title{
        width: 100%;height: 55px;
        text-align: left;
        padding: 15px;
        padding-bottom: 0
    }
    .div_title h4{
        margin-bottom: 5px;
        font-size: 18px;
        font-weight: 700;
        margin-bottom: .16rem;
        line-height: 1em;
    }
    .div_title p{
        line-height: 1em;
        font-size: 12px;
        color: #8e8e8e;
        margin-top: 8px;
    }
    .project_name{
        /* width:98px;
        height: 69px; */
        font-weight: 500;
        width: 99%;
        height: 94%;
        color: #fff;
        box-sizing: border-box;
        padding: 1.25rem 0 0 .32rem;
        position: absolute;
        top: 0;
        left: 0;
        background: linear-gradient(rgba(1,1,1,0),rgba(0,0,0,.6));
    }
    .titlebar{
        display: flex;
        align-items: center;
        width: 100%;
        height: 58px;
        background: #fff;
        box-shadow: -2px 1px 2px rgb(212, 212, 212);
        padding-left: 18px;
    }
    /* .titlebar>span{
        margin-left:8px 
    } */
     .titlebar .hot{
        margin-left:20px 
    }
    .search{
        width: 35px;
        height: 35px;
        margin-left: 225px;
    }
    .swiper-container{
        width:100%;
        height:100%;
        border-radius: 20px;
    }
    .swiper-slide img{
        width: 100%;
        border-radius: 5px;
    }
    .banner{
        padding: 10px;
        /* width: 355px; */
        height:160px;
    }
    /* .swiper-slide{
        width:100%;
    } */
    .swiper2{
        border-radius: 0;
    }
    .swiper2 .swiper-slide img{
        width: 100%;
        height: 100%;
    }
    .swiper2_div{
        padding: 15px;
        border-top: 2px solid rgb(226, 226, 226);
        border-bottom: 2px solid rgb(226, 226, 226);
    }
    .swiper2 .swiper-slide{
        margin-right: 10px !important;
        position: relative;
    }
</style>

