<template>
    <div>
        <table></table>
        <div class="shop">
            <p class="p1">购物车</p>
            <p class="p2" @click="bianji">{{txt}}</p>
        </div>
        <div>
            <!-- <img src="../../img/shop/chart_mpty.png" alt=""> -->
            <div>
                <div class="title">
                    <!-- <img src="../../img/shop/unselect.png" alt="" class="icon"> -->
                    <p>HAPPYDRUG</p>
                </div>
                <div class="neirong" v-for="(item,i) of list" :key="i">
                    <img :src="select[i]" alt="" class="icon" @click="change(i)">
                    <img :src="'http://127.0.0.1:3000/'+item.img_url" alt="" class="slt">
                    <div class="subtitle">
                        <p class="xbt">{{item.title}}</p>
                        <div class="size">
                            <span style="color:#ccc">{{item.size}}</span><span style="color:#ae2121">￥{{item.price}}</span>
                        </div>
                        <div class="count">
                            <button @click="down(i)">-</button>
                            <span>{{item.count}}</span>
                            <button @click="add(i)">+</button></div>
                    </div>
                </div>
            </div>
        </div>

    <ul class="computed">
        <li>
            <img :src="select1" alt="" class="icon1" @click="selectAll">
        </li>
        <li>全选</li>
        <li class="all">总价:</li>
        <li class="price">￥{{sum}}</li>
        <li style="color:#aaa;font-size:13px">不含运费</li>
        <li class="btn" @click="delAll">{{btn}}</li>
    </ul>
    <div class="like">
        <div style="display:flex;justify-content:space-around;font-size:15px;font-weight:blod;
        margin-bottom:20px;">
            <span>——————</span>
            <span>猜你喜欢</span>
            <span>——————</span>
        </div>
        <div style="padding:15px;padding-top:0;border-bottom: 2px solid rgb(226, 226, 226);">
            <div class="pro"  id="pro1">
                <img src="../../img/pro/like1.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>草莓洛神花|便携茶包</p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/touxiang.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">凤尾鱼粥</p>
                    </div>
                </div>
            </div>
            <div class="pro" style="margin-top:20px" id="pro2">
                <img src="../../img/pro/like2.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>绝对伏特加原味|ABSOLUT VODKA</p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/img5.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">无忌听义父的话</p>
                    </div>
                </div>
            </div>
            <div class="pro" style="margin-top:20px">
                <img src="../../img/pro/like3.jpg" alt="" class="pro_img">
                <div class="pro_title">
                    <p>像芬兰人一样喝一罐Lonkero在冬日里续命|Hartwall长饮 蔓越莓味</p>
                    <div style="display:flex;align-items:center">
                        <img src="../../img/zhuye/peo3.jpg" alt="">
                        <p style="width: 3.4rem;color: #8e8e8e;font-size:8px">我是你爹</p>
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

    </div>
    <br><br><br><br><br><br><br><br>
</div>
</template>
<script>
export default {
    data(){
        return {
            txt:"编辑",
            list:[],
            btn:"立即购买",
            select:[require("../../img/shop/unselect.png"),require("../../img/shop/unselect.png"),require("../../img/shop/unselect.png")],
            select1:require("../../img/shop/unselect.png"),
            sum:0
        }
    },
    methods:{
        change(i){    
            if(this.select[i]==require("../../img/shop/unselect.png")){
                this.select.splice(i,1,require("../../img/shop/select.png"))
                this.sum+=this.list[i].price*this.list[i].count
            }else{
                this.select.splice(i,1,require("../../img/shop/unselect.png"))
                this.sum-=this.list[i].price*this.list[i].count
            }
            },
        loadMore(){
            this.axios.get("cart").then(result=>{
                // 先清空购物车
            this.$store.commit("clear");
                // this.list=result.data.data;
                //双向绑定全选框
                // 获取服务器的数组
                var rows=result.data.data;
                this.$store.commit("increment")
                this.list=rows;
                for(var i=0;i<this.list.length;i++){
                    this.select.push(require("../../img/shop/unselect.png"))
                }
            })
        },
        bianji(){
            if(this.txt=="编辑"){
                this.txt="完成";
                var btn=document.getElementsByClassName("btn")[0];
                btn.style.background="#000";
                this.btn="删除"
            }else if(this.txt=="完成"){
                this.txt="编辑"
                var btn=document.getElementsByClassName("btn")[0];
                btn.style.background="#ae2121";
                this.btn="立即购买"
            }
        },
        selectAll(){
            if(this.select1==require("../../img/shop/unselect.png")){
                this.select=[require("../../img/shop/select.png"),require("../../img/shop/select.png"),require("../../img/shop/select.png")]
                this.select1=require("../../img/shop/select.png")
                this.sum=0;
                for(var item of this.list){
                    this.sum+=item.price*item.count;
                }
            }else{
                this.select1=require("../../img/shop/unselect.png")
                this.select=[require("../../img/shop/unselect.png"),require("../../img/shop/unselect.png"),require("../../img/shop/unselect.png")]
                this.sum=0
            }
            
        },
        add(i){
            var count1=this.list[i].count;
            var count2=this.list[i].count+1;
            this.sum+=this.list[i].price*(count2-count1)
            this.list[i].count=count2
            this.select.splice(i,1,require("../../img/shop/select.png"))
        },
        down(i){
            if(this.list[i].count>0){
                this.list[i].count--
                this.select.splice(i,1,require("../../img/shop/select.png"))
                
            }  
        },
        delAll(){
            if(this.btn=="删除"){
                var str="";
                for(var i=0;i<this.list.length;i++){
                    if(this.select[i]==require("../../img/shop/select.png")){
                        var id=this.list[i].cid;
                        str+=id+","
                        
                    }else if(str.length==0){
                    this.$toast("请选择商品");
                    return;
                    }
                }
                str=str.substring(0,str.length-1)
                console.log(str);
                //发送ajax请求
                var url="delAll";
                var obj={ids:str};
                this.$messagebox.confirm('是否确认删除此商品').then(action=>{
                    this.axios.get(url,{params:obj}).then(result=>{
                        if(result.code==1){
                            this.loadMore();
                        }else{
                            this.$toast("删除失败")
                        }
                    })
                }).catch(err=>{
                    console.log(err)
                });
            }
        }
    },
    created(){
        this.loadMore();
    },
    mounted(){
        // var imgs=document.getElementsByClassName("icon");
        console.log(this.$refs.box)
    }
}
</script>
<style scoped>
.like{
    width: 100%;
    margin-top: 40px;
}
.pro_title{
        width: 55%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
    .pro_title>p{
        color: #000;
        /* line-height: 1.2em; */
        font-size: 12px;
        font-weight: 500;
        text-align: left;
    }
    .pro_title img{
        width: 28.5px;
        height: 28.5px;
        border-radius: 50%;
        margin-right: 10px;
    }
    .pro{
        width: 90%;
        display: flex;
        justify-content: space-between;
        margin-left: 25px;
    }
    .pro_img{
        background-color: #f5f5f5;
        background-position: 50% 50%;
        background-repeat: no-repeat;
        background-size: 100%;
        width: 40%;
        height: 100%;
        border-radius: .16rem;
    }
.btn{
    width: 25%;
    background:#ae2121;
    height: 35px;
    line-height: 35px;
    color:#fff;
    text-align: center;
    border-radius: 5px;
    margin-left: 15px;

}
.price{
    font-weight: bold;
    color:#ae2121;
    font-size: 16px;
    margin-right: 15px;
}
.all{
    margin-left: 20px
}
.icon1{
    width: 50%;
}
.computed{
    width: 100%;
    display: flex;
    height: 40px;
    background: #fff;
    position: fixed;
    bottom: 50px;
    align-items: center;
    font-size: 15px;
    padding: 15px;
}
*{
    margin:0;padding: 0;
}
.count{
    width: 60%;
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-top: 5px;
}
.count button{
    border: 0;outline: none;
    background: 0;
    border: 1px solid #aaa;
    width: 30%;
    /* padding:5px; */
    /* height: 60%; */
}
.size{
    width: 90%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-left: 5px
}
.subtitle{
    width:40%;
        margin-left: 10px
}
.xbt{
    font-size: 14px;
    overflow: hidden;
    text-overflow: ellipsis;
    width: 100%;
    white-space: nowrap;
    font-weight: bold;
    margin-bottom: 5px;
}
.neirong{
    width: 100%;
    display: flex;
    align-items: center;
    padding-left: 15px;
    border-bottom: 1px solid #eee;
    padding-bottom: 10px;
    padding-top: 10px;
}
.slt{
    width: 40%;
    border-radius:5px;
    height: 50%;
}
.title{
    width:100%;
    display:flex;
    margin-top: 70px;
    height: 25px;
    border-bottom: 1px solid #eee;
    align-items: center;
    padding-left: 15px;
    padding-bottom: 10px;
    text-align: left;
}
.icon{
    width: 4%;
    height: 64%;
    margin-right: 15px;
}
    .shop{
        width: 100%;
        height: 50px;
        position: fixed;
        background: #fff; 
        box-shadow: 2px 2px 1px rgba(0,0,0,.1);
        display: flex;
        font-size: 14px;
        align-items: center
    }
    .shop .p1{
        margin-left: 44%;
    }
    .shop .p2{
        margin-left: 28%
    }
</style>

