<template>
    <div style="margin-top:40px">
                <div class="title title2">
                <div class="txt">
                    <p style="font-size: 18px;">美妆个护</p>
                    <p style="font-size: 12px;">独立美妆和复古美妆</p>
                </div>
            </div>
            <div class="pro_parent">
                <div class="pro" style="margin-bottom:10px">
                    <img src="../../img/chihe/2_1.png" alt="" class="pro_img">
                    <p>美妆</p>
                </div>
                <div class="pro">
                    <img src="../../img/chihe/2_2.png" alt="" class="pro_img">
                    <p>口红</p>
                </div>
                <div class="pro">
                    <img src="../../img/chihe/2_3.png" alt="" class="pro_img">
                    <p>香水</p>
                </div>
                <div class="pro">
                    <img src="../../img/chihe/2_4.png" alt="" class="pro_img">
                    <p>清洁</p>
                </div>
                <div class="pro">
                    <img src="../../img/chihe/2_5.png" alt="" class="pro_img">
                    <p>护理</p>
                </div>
            </div>
            </div>
</template>
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

