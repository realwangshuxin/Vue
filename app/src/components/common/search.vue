<template>
    <div class="container">
        <div style="padding:17px">
            <div class="search_title">
            <img src="../../img/zhuye/search.png" alt="" class="search_img">
            <input type="text" placeholder="请输入你想找的狠人狠货" v-model="keyword"  @keyup.13="search">
            <span class="ss" @click="search">搜索</span>
            <span class="fenge">|</span>
            <span class="qx" @click="quexiao">取消</span>
        </div>
        <div class="history">
            <span class="his_title">搜索历史</span>
            <img src="../../img/zhuye/laji.png" alt="" v-if="cb" style="position:relative;z-index:1000" @click="del">
            <div v-else  @click="del2" class="del">删除</div>
        </div>
        <div class="keywords">
            <div :class="className" v-for="(elem,i) of newkey" :key="i" style="margin-right: 9px;"
            >{{elem}}</div>
        </div>
        <div  class="his_title" style="text-align:left;padding-left:15px;margin-top:20px;margin-bottom:20px;">
            热门搜索
        </div>
        <div class="remen">
            <div class="key"  v-for="(elem,i) of remen" :key="i">{{elem}}</div>
        </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            remen:['电动牙刷','止汗膏','葡萄酒','电影','独角兽染发','电子烟','T恤','香水','眼影粉','威士忌'],
            keyword:"",
            className:{
                key:"key",
                hide:"hide"
            },
            newkey:[],
            cb:true
        }
    },
    methods:{
        search(){
            this.axios.get("search",{params:this.keyword}).then(result=>{
                 this.className={key:"key"}
                if(this.newkey.length>4){
                    this.newkey.splice(0,1)
                }
                if(this.newkey.indexOf(this.keyword)==-1){
                    this.newkey.push(this.keyword);
                }
                var storage=window.localStorage;
                storage.setItem("keyword",this.newkey)
                if(this.keyword=="漫画"){
                    setTimeout(() => {
                        this.$router.push("/pro2")
                    }, 1000);
                    return
                }
                setTimeout(() => {
                        this.$router.push("/pro1")
                }, 1000);
                
            })
           
        },
        quexiao(){
            this.$router.push("/")
        },
        del(){
            if(this.cb){
                this.cb=false
            }          
        },
        del2(){
            if(!this.cb){
                this.cb=true
            } 
            this.$messagebox.confirm("是否确定删除").then(action=>{
                localStorage.removeItem("keyword")
                this.$toast("已删除");
                this.$router.go(0)
            })
        }
    },
    created(){
        // localStorage.removeItem("keyword")
         var storage=window.localStorage;
         var a=storage.getItem("keyword")
         this.className={key:"key"}
         if(a.length>0){
           var b=a.split(",")
         }
           
            for(var item of b){
                this.newkey.push(item);
            }
    }
}
</script>
<style scoped>
.container{
    width: 100%;
    /* padding: 30px */
}
.hide{
    display: none;
}
.remen{
    display: flex;
    flex-wrap: wrap;
    width: 100%;
}
.remen>div{
    margin-left: 15px;
    margin-bottom: 10px;
}
.keywords{
    width: 100%;
    display: flex;
    align-items: center;
    height: 60px;
    margin-top: 15px;
    padding: 20px;
}
.key{
    border: 1px solid #aaa;
    border-radius: 5px;
    width: 20%;
    height: 25px;
    padding-top: 5px;
}
.his_title{
    font-weight: bold;
    font-size: 15px;
}
.history{
    width: 100%;
    display: flex;
    /* justify-content: space-between; */
    align-items: center;
    padding-top: 20px;
    padding-left: 20px;
    /* padding-right: 15px; */
}
.del{
    margin-left: 70%;
    font-size: 14px;
}
.history img{
    width: 6%;
    margin-left: 70%;
}
.ss{
    margin-right:8px;
    /* margin-left: 100px */
}
.fenge{
    margin-right: 8px;
    color: gray
}
.qx{
    margin-right: 0px;
}
.search_img{
    width: 8%;
    height: 30px;
}
input{
    width: 66%;
    border: 0;
    outline: none;
    font-weight: normal !important;
    font-size: 14px !important;
    padding-left: 13px;
}
::-webkit-input-placeholder{
        color: gray;
        font-weight: normal !important;
        font-size: 12px !important;
}
.search_title{
    width: 100%;
    display: flex;
    height:40px;
    align-items: center;
    font-size: 14px;
    font-weight: bold;
    padding-bottom: 20px;
    border-bottom: 2px solid #000;
}
</style>


