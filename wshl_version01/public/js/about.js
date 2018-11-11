$(function(){
    //标签页效果
    $("ul#tab").on("click","a[data-toggle=tab]",function(e){
        e.preventDefault();
        var li=$(this).parent();
        li.addClass("on").siblings().removeClass("on");
        var target=$(this).attr("data-target");
        $(target).addClass("active").siblings(".active").removeClass("active");
    })
    //td
    $("td.td").click(function(){
        var img=$(this).find("img");
        img.toggleClass("active");
        $(this).parent().next().find("div.dd").slideToggle(500)
    })
    //企业文化图片轮播
    var li=$("ul.dot li")
    li.click(function(){
        $(this).addClass("active").siblings().removeClass("active")
        var target=$(this).attr("data-target")
        $(target).addClass("active").siblings().removeClass("active")
    })
    //轮播
    var index=0
    var img_index=$("div.pic ul li")
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
    var timer=setInterval(go,3000)
    //鼠标进入时停止轮播
    $("div.pic").hover(function(){
        clearInterval(timer)
    },function(){
        timer=setInterval(go,3000)
    })

})