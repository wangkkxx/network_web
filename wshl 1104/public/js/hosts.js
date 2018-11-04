$(function(){
    $("a").click(function(e){
        e.preventDefault()
    })
    //按钮通用样式
    $(".btn").click(function(){
        $(this).addClass("active").siblings(".active").removeClass("active")
    })
    //相关产品
    $(".chanp .rt a").click(function(){
        $(this).next().addClass("active")
    })
    //禁用按钮
    $("a.disabled").click(function(){
        $(this).removeClass("active")
        $(this).siblings().addClass("active")
    })
    //悬停提示
    $(".lb .spec b").hover(function(){
        $(this).next().css("display","block")
    },function(){
        $(this).next().css("display","none")
    })
    //数据库选择
    $(".left .lb3 #database").on("click","label",function(){
        $(this).addClass("on").siblings(".on").removeClass("on")
        var html=$(this).children().last().html()
        $(".right ul .database i:first-child").html(html)
        $(".lb3 span.sql i:first-child").html(html)
    })
    //IP选择
    $(".left .lb4 .dy").on("click","a",function(){
        $(this).addClass("on").siblings(".on").removeClass("on")
        $(".right ul .rig.ip").html($(this).html())
    })
    //线路选择
    $(".left .lb1 .dy").on("click","a",function(){
        $(this).addClass("on").siblings(".on").removeClass("on")
        $(".right ul .rig.host i:first-child").html($(this).html().slice(0,2)+"1")
        var href=$(this).attr("href")
        $(href).addClass("show").siblings(".show").removeClass("show")
    })
    //购买时长
    $(".left .lb6 .spec").on("click","label",function(){
        $(this).addClass("on").siblings(".on").removeClass("on")
        var html=$(this).children().last().html()
        $(".right ul .rig.year").html(html)
    })
    //滑块点击事件+联动效果
    var box=$(".lb2 .slbox")
    var left=box.offset().left
    var price=$(".right ul .rig.price b")
    var p0=98
    box.click(function(e){
        var m=$("table.empty").offset().left
        var x = e.pageX;
        var width =x-m-left-25;
        var rlen=$(".lb2 .slbox").width()
        var len=$(".rule span").length-1
        var sec=Math.floor(rlen/len)
        var y=Math.round(width/sec)
        var handle=$(".lb2 .handle")
        handle.css("left",y*sec)
        var range=$(".lb2 .range")
        range.css("width",y*sec)
        //联动效果
        var sp=$(".right ul .space")
        var kj=$(".lb3 .kj")
        var host=$(".right ul .host i:last-child")
        var xh=$(".lb3 .tdr.xh")
        var ct=$(".right ul .cata")
        var ml=$(".lb3 .tdr.ml")
        var sql=$(".lb3 span.sql i:last-child")
        var database=$(".right ul .database i:last-child")
        var dk=$(".lb3 .tdr.dk")
        var bwidth=$(".right ul .bwidth")
        var yj=$(".lb3 .tdr.yj")
        var pt=$(".right ul .post")
        var dl=$(".lb3 .tdr.dl")
        var iis=$(".right ul .iis")
        var type=""
        var space=""
        var dt=""
        var bw="2M"
        var cata=0
        var post="500M 10用户"
        var ll=""
        switch(y){
            case 1:
                space="1000M"
                type="经济型"
                dt="300M"
                bw="3M"
                ll="500个"
                p0+=70
                break
            case 2:
                space="2000M"
                type="标准型"
                dt="500M"
                bw="4M"
                ll="800个"
                p0+=130
                break
            case 3:
                space="3000M"
                type="企业型"
                dt="1000M"
                bw="5M"
                post="1000M 10用户"
                ll="1000个"
                p0+=200
                break
            case 4:
                space="4000M"
                type="发展型"
                dt="2000M"
                bw="7M"
                cata=1
                post="1000M 10用户"
                ll="无限制"
                p0+=300
                break
            case 5:
                space="5000M"
                type="商务型"
                cata=2
                dt="3000M"
                bw="8M"
                post="1000M 10用户"
                ll="无限制"
                p0+=500
                break
            case 6:
                space="10000M"
                type="豪华型"
                dt="4000M"
                bw="9M"
                cata=3
                post="1000M 10用户"
                ll="无限制"
                p0+=700
                break
            case 7:
                space="20000M"
                type="旗舰型"
                dt="5000M"
                bw="10M"
                cata=5
                post="1000M 10用户"
                ll="无限制"
                p0+=900
                break
            default:
                space="500M"
                dt="100M"
                type="入门型"
                ll="200个"
        }
        host.html(type)
        xh.html(type)
        sp.html(space)
        kj.html(space)
        ct.html(cata)
        ml.html(cata)
        sql.html(dt)
        database.html(dt)
        bwidth.html(bw)
        dk.html(bw)
        pt.html(post)
        yj.html(post)
        dl.html(ll)
        iis.html(ll)
        price.html(parseInt(p0))
    })
    
})
