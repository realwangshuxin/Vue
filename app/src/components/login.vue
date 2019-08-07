<template>
    <div>
        <div  class="bg">
            <div style="padding:50px;padding-top:140px;">
                <input type="text" placeholder="请输入用户名" class="phone" v-model="uname">
                <input type="password" placeholder="请输入密码" class="yzm" v-model="upwd">
                <!-- <mt-field label="username" :placeholder="unameHolder" v-model="username"  class="phone"></mt-field>
                <mt-field label="password" :placeholder="upwdHolder" type="password" v-model="upwd" class="yzm"></mt-field> -->
                 <div class="drag" ref="dragDiv">
                    <div class="drag_bg"></div>
                    <div class="drag_text">{{confirmWords}}</div>
                    <div ref="moveDiv" @touchstart="mousedownFn($event)" :class="{'handler_ok_bg':confirmSuccess}" class="handler handler_bg" style="position: absolute;top: 3px;left: 4px;"></div>
                </div>
                <div class="xieyi">
                    <span style="color: #b1abab;">登录即同意公路商店</span>
                    <span style="color:#fff">用户服务协议</span>
                </div>
                <button class="btn" @click="login">登录</button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            beginClientX:0,           /*距离屏幕左端距离*/
            mouseMoveStata:false,     /*触发拖动状态  判断*/
            maxwidth:'',               /*拖动最大宽度，依据滑块宽度算出来的*/
            confirmWords:'拖动滑块验证 ',   /*滑块文字*/
            confirmSuccess:false,          /*验证成功判断*/
            uname:"",
            upwd:""
        }
    },
    methods:{
        mousedownFn:function (e) {
                if(!this.confirmSuccess){
                    e.preventDefault && e.preventDefault();   //阻止文字选中等 浏览器默认事件
                    this.mouseMoveStata = true;
                    this.beginClientX = e.changedTouches[0].clientX;
                }
            },        //mousedoen 事件
            successFunction(){
                this.confirmSuccess = true
                this.confirmWords = '验证通过';
                if(window.addEventListener){
                    document.getElementsByTagName('html')[0].removeEventListener('touchmove',this.mouseMoveFn);
                    document.getElementsByTagName('html')[0].removeEventListener('touchend',this.moseUpFn);
                }else {
                    document.getElementsByTagName('html')[0].removeEventListener('touchend',()=>{});
                }
                document.getElementsByClassName('drag_text')[0].style.color = '#fff'
                document.getElementsByClassName('handler')[0].style.left = 227 + 'px';
                document.getElementsByClassName('drag_bg')[0].style.width = this.maxwidth + 'px';
            },                //验证成功函数
            mouseMoveFn(e){
                if(this.mouseMoveStata){
                    let width = e.changedTouches[0].clientX - this.beginClientX;
                    if(width>0 && width<=this.maxwidth){
                        document.getElementsByClassName('handler')[0].style.left = width + 'px';
                        document.getElementsByClassName('drag_bg')[0].style.width = width + 'px';
                    }else if(width>this.maxwidth){
                        this.successFunction();
                    }
                }
            },                   //mousemove事件
            moseUpFn(e){
                this.mouseMoveStata = false;
                var width = e.changedTouches[0].clientX - this.beginClientX;
                if(width<this.maxwidth){
                    document.getElementsByClassName('handler')[0].style.left = 4 + 'px';
                    document.getElementsByClassName('drag_bg')[0].style.width = 0 + 'px';
                }
            },
            login(){
                // console.log(this.uname,this.upwd)
                var reg=/^\w{3,12}$/i;
                    if(!reg.test(this.uname) || !reg.test(this.upwd) || this.confirmWords!='验证通过'){
                    this.$toast({
                        message: '用户名或密码格式错误',
                        position: 'center',
                        duration: 3000
                    })
                    return;                           
                    }
                    if(reg.test(this.uname) && reg.test(this.upwd) && this.confirmWords=='验证通过'){
                        this.axios.get("login",{
                            params:{
                                uname:this.uname,
                                upwd:this.upwd
                            }
                        }
                        ).then(res=>{
                            console.log(res);
                            if(res.data.code>0){
                            this.$toast('登录成功')
                            localStorage.setItem("session",res.uid);
                            this.$router.push("/")
                        }else{
                            this.$messagebox('提示','用户名或密码错误')
                            }
                        })
                    }
                }         
    },
     mounted(){
            this.maxwidth = this.$refs.dragDiv.clientWidth - this.$refs.moveDiv.clientWidth;
            document.getElementsByTagName('html')[0].addEventListener('touchmove',this.mouseMoveFn);
            document.getElementsByTagName('html')[0].addEventListener('touchend',this.moseUpFn)
        }
}
</script>
<style scoped>
    .btn{
        width: 100%;
        height: 40px;
        color: #fff;
        background: #AE2121;
        border: 0;
        outline: none;
        border-radius: 20px;
        line-height: 40px;
        margin-top: 30px;
    }
    .xieyi{
        display: flex;
        justify-content: space-between;
        font-size: 12px;
        margin-top: 15px;
    }
    .bg{
        width:100%;
        height: 700px;
        background-image:url("../img/login/login_bg.jpg"); 
        background-size: cover;
        background-repeat: no-repeat;
    }
    .phone,.yzm{
        width: 100%;
        background: 0;
        outline: none;
        border: 0;
        border-bottom: 1px solid #fff;
        color: #fff;
        font-size: 15px;
        padding-bottom: 15px
    }
    input::-webkit-input-placeholder{
    color:#fff;
    }
    .yzm{
        margin-top: 40px
    }
    .drag{
        position: relative;
        background-color: #e8e8e8;
        width: 100%;
        height: 34px;
        line-height: 34px;
        text-align: center;
        border-radius: 20px;
        background: rgba(248,248,248,.5);
        border: 1px solid #fff;
        margin-top: 30px;
        
    }
    .handler{
        width: 40px;
        height: 25px;
        border: 1px solid #fff;
        cursor: move;
        border-radius: 20px;
    }
    .handler_bg{
        background: #fff;
        
    }
    
    .drag_bg{
        height: 34px;
        width: 0px;
    }
    .drag_text{
        position: absolute;
        top: 0px;
        width: 100%;text-align: center;
        -moz-user-select: none;
        -webkit-user-select: none;
        user-select: none;
        -o-user-select:none;
        -ms-user-select:none;
        color: #fff;
    }
</style>


