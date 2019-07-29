<template>
    <div style="padding:30px;padding-top:40px">
        <van-nav-bar
            title="已发货"
            left-text="返回"
            left-arrow
            @click-left="onClickLeft"
            @click-right="onClickRight"
            />
        <div class="parent" >
            <van-steps
        :active="active"
        active-icon="success"
        active-color="#38f"
        >
        <van-step>买家下单</van-step>
        <van-step>商家接单</van-step>
        <van-step>买家提货</van-step>
        <van-step>交易完成</van-step>
        </van-steps>
        <van-steps direction="vertical" :active="0">
    <van-step>
        <h3>【城市】物流状态1</h3>
        <p>2016-07-12 12:40</p>
    </van-step>
    <van-step>
        <h3>【城市】物流状态2</h3>
        <p>2016-07-11 10:00</p>
    </van-step>
    <van-step>
        <h3>快件已发货</h3>
        <p>2016-07-10 09:30</p>
    </van-step>
    </van-steps>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            active: 1
        }
    },
    methods:{
        onClickLeft() {
    //   Toast('返回');
    },
    onClickRight() {
    //   Toast('按钮');
    }
    }
}
</script>
<style scoped>
.parent{
    width: 100%;
    margin-top: 20px;
}
</style>


