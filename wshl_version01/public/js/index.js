$(function(){
    //首页轮播-开始
    //点击圆点切换
    var li=$(".banner ul li")
    li.click(function(){
        var target=$(this).attr("data-target")
        $(this).addClass("active").siblings(".active").removeClass("active")
        $(target).addClass("active").siblings(".active").removeClass("active")
    })
    //轮播
    var index=0
    var img_index=$(".banner .bans>div")
    var move=function(index){
        img_index.eq(index).addClass("active").siblings(".active").removeClass("active")
        li.eq(index).addClass("active").siblings(".active").removeClass("active")
    }
    function go(){
        if(index<4){
            index++
            move(index)
        }else{
            index=0
            move(index)
        }
    }
    var timer=setInterval(go,2000)
    //鼠标进入时停止轮播
    $(".banner").hover(function(){
        clearInterval(timer)
    },function(){
        timer=setInterval(go,2000)
    })
    //左右箭头
    var next=$(".banner button.right")
    next.click(function(){
        clearInterval(timer)
        if(index<4) index++
        else index=0
        move(index)
    })
    var prev=$(".banner button.left")
    prev.click(function(){
        clearInterval(timer)
        if(index==0) index=4
        else index--
        move(index)
    })
    //首页轮播-结束
    //域名查询
    var $com=$(".dn-main div.com");
    var $ul=$com.children().first()
    $com.hover(function(){
        $ul.toggleClass("active")
    })

    //一站式服务
    $('[data-toggle="toggle"]').mouseover(function () {
        $(this).addClass("active").siblings(".active").removeClass("active")
    });

    //idc解决方案
    $(".idc1 [data-target]").click(function(){
        var btn=$(this);
        var txt_id=btn.attr("data-target")
        var txt=$(".idc1").find(txt_id)
        txt.addClass("active").siblings(".active").removeClass("active")
        btn.addClass("active").siblings(".active").removeClass("active")
    })

    //合作伙伴
    var dlen=$(".partner .hzp ul li").length
    var blen=dlen-5
    var dots=$(".partner .dots")
    for(var i=0;i<=blen;i++){           //动态生成索引按钮
        dots.append("<button></button>")
    }
    dots.children().first().addClass("active")  //第一个原点默认激活
    var $btn=$(".partner .dots button")
    $btn.click(function(){
        var btn=$(this) 
        var n=btn.index() 
        var ul=$(".partner .hzp ul")
        ul.css("marginLeft","-237"*n)
        btn.addClass("active").siblings(".active").removeClass("active")
    })

})


