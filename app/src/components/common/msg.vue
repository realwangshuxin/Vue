<template>
    <div style="padding:15px">
        <div class="msg" style="font-size:15px;font-weight:bold;padding:0;height:30px;color:#bbb">
            私信
        </div>
        <div class="msg">
            <img src="../../img/peo1.jpg" alt="" class="touxiang">
            <div class="txt">
                <p class="title">V飞行计划</p>
                <p>小蜜邀请您预测街舞2冠军毛巾</p>
            </div>
            <div class="red">1</div>
        </div>
        <div class="msg">
            <img src="../../img/peo2.jpg" alt="" class="touxiang">
            <div class="txt">
                <p class="title">妖精的口袋</p>
                <p>夏天能打败小龙虾，可能只有这...</p>
            </div>
            <div class="red">1</div>
        </div>
        <div class="msg">
            <img src="../../img/peo4.jpg" alt="" class="touxiang">
            <div class="txt">
                <p class="title">V飞行计划</p>
                <p>TA已查看你分享的宝贝，问问TA...</p>
            </div>
            <div class="red">1</div>
        </div>
        <div class="msg">
            <img src="../../img/pro5.jpg" alt="" class="touxiang">
            <div class="txt">
                <p class="title">一条裤腿的人</p>
                <p>谢谢亲，麻烦您啦</p>
            </div>
            <div class="red">1</div>
        </div>
    </div>
</template>
<script>

export default {
    data(){
        return {
            activeNames: ['1']
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
    top: 3rem;
    left: 1.9rem
}
*{
    margin:0;padding: 0
}
.msg{
    width: 100%;
    display: flex;
    height: 55px;
    /* margin-top: 25px; */
    /* margin-left: 20px; */
    /* border-top:1px solid #bbb; */
    border-bottom:1px solid #bbb;
    padding-top: 15px;
    padding-bottom:15px
}
.touxiang{
    width: 20%;
    border-radius: 5px;
}
.txt{
    width: 60%;
    text-align: left;
    height: 100%;
        margin-left: 15px
}
.title{
    font-size: 15px;
    font-weight: bold;
    margin-bottom: 20px;

}
</style>


