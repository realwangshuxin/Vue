<template>
    <div>
        <img :src="focused?selectedImg:normalImg" class="imgstyle">
    </div>
</template>
<script>
export default {
    data(){
        return {
            
        }
    },
    props:{
        focused:false,
        selectedImg:{default:""},
        normalImg:{default:""}
    }
}
</script>
<style scoped>
.imgstyle{
        width: 30px;
        height:30px;

    }
</style>
