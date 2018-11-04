$(function(){
    //左边小图标移入时提示
    $(".lb .spec b").hover(function(){
        $(this).next().css("display","block")
    },function(){
        $(this).next().css("display","none")
    })
    //单选框点击事件
    $(".left label").click(function(){
        $(this).addClass("on").siblings(".on").removeClass("on")
    })
    //相关产品
    $(".chanp .rt a").click(function(e){
        e.preventDefault()
        $(this).next().addClass("active")
    })
    //推荐配置
    $(".left div.pz").on("click","button",function(){
        var target=$(this).attr("data-target")
        $(target).css("display","block").siblings().css("display","none")
        if($(this).is(".tj")){
            $(".right .rig.cpu i:first-child").html("2核")
        }
    })
    var tab=$(".left #pz2 .dy li")
    tab.click(function(){
        tab.children().find("tr:first-child").removeClass("active")
        $(this).addClass("active").siblings().removeClass("active")
        $(this).children().find("tr:first-child").addClass("active")
        var he=$(this).children().find("td span:first-child i").html()
        var g=$(this).children().find("td span:last-child i").html()
        $(".right .rig.cpu i:first-child").html(he)
        $(".right .rig.cpu i:last-child").html(g)
    })
    //配置
    $(".lb2 .dy").on("click","button",function(){
        //console.log($(this).html())
        //var html=()
        if($(this).html()=="2核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>1G</button><button>2G</button><button>4G</button><button>6G</button><button>8G</button><button>10G</button>")
        }else if($(this).html()=="4核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>2G</button><button>4G</button><button>6G</button><button>8G</button><button>10G</button><button>12G</button>")
        }else if($(this).html()=="6核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>2G</button><button>4G</button><button>6G</button><button>8G</button><button>10G</button><button>12G</button><button>16G</button>")
        }else if($(this).html()=="8核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>4G</button><button>6G</button><button>8G</button><button>10G</button><button>12G</button><button>16G</button><button>24G</button>")
        }else if($(this).html()=="10核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>6G</button><button>8G</button><button>10G</button><button>12G</button><button>16G</button><button>24G</button><button>32G</button>")
        }else if($(this).html()=="12核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>8G</button><button>10G</button><button>12G</button><button>16G</button><button>24G</button><button>32G</button><button>48G</button>")
        }else if($(this).html()=="16核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>8G</button><button>10G</button><button>12G</button><button>16G</button><button>24G</button><button>32G</button><button>48G</button><button>64G</button>")
        }else if($(this).html()=="1核"){
            $(".lb2 .dy.nc").html("")
            $(".lb2 .dy.nc").html("<button class='active'>1G</button><button>2G</button><button>4G</button><button>6G</button><button>8G</button>")
        }
    })
    
    //按钮点击事件
    $(".left button").click(function(){
        $(this).addClass("active").siblings(".active").removeClass("active")
        var target=$(this).attr("data-target")
        $(target).addClass("show").siblings(".show").removeClass("show")
        if(!$(this).is(".active"))
          $nc.append("<button class='he16'>10G</button>")
    })
    //地域选择
    $(".left .lb1 .dy").on("click","button",function(){
        $(".right .rig.ter").html($(this).html())
        $(".right .rig.cloud i").html($(this).html().slice(0,2))
    })
    //配置选择
    $(".left #pz1 .he").on("click","button",function(){
        $(".right .rig.cpu i:first-child").html($(this).html())
    })
    $(".left #pz1 .nc").on("click","button",function(){
        $(".right .rig.cpu i:last-child").html($(this).html())
    })
    //附加IP
    $(".left .lb4 .df .dy").on("click","button",function(){
        $(".right .rig.fip").html($(this).html())
    })
    //购买时长
    $(".left .lb6").on("click","label",function(){
        $(".right .rig.year").html($(this).text())
    })
    //操作系统
    $(".lb5 .dy select").on("change",function(){
        console.log($(this).val())
        $(".right .rig.system").html($(this).val())
    })
    
    //数据盘
    var data=$(".lb3 .slbox")
    var left=data.offset().left
    var m=$("table.empty").offset().left
    var price=$(".right ul .rig.price b")
    var p0=78
    data.click(function(e){
        var x = e.pageX;
        var width =x-m-left-25;
        var rlen=$(".lb3 .slbox").width()
        var len=$(".lb3 .rule span").length-1
        var sec=Math.floor(rlen/len)
        var y=Math.round(width/sec)
        var handle=$(".lb3 .handle")
        handle.css("left",y*sec)
        var range=$(".lb3 .range")
        range.css("width",y*sec)
        var value=$(".lb3 span.value")
        var pan=$(".right .rig.pan")
        switch(y){
            case 1:
                value.html("250GB")
                pan.html("250GB")
                break
            case 2:
                value.html("500GB")
                pan.html("500GB")
                break
            case 3:
                value.html("750GB")
                pan.html("750GB")
                break
            case 4:
                value.html("1000GB")
                pan.html("1000GB")
                break
            default:
                value.html("30GB")
                pan.html("30GB")
        }
    })

    //带宽
    var dk=$(".lb4 .slbox")
    dk.click(function(e){
        var x = e.pageX;
        var width =x-m-left-25;
        var rlen=dk.width()
        var len=$(".lb4 .rule span").length-1
        var sec=Math.floor(rlen/len)
        var y=Math.round(width/sec)
        var handle=$(".lb4 .handle")
        handle.css("left",y*sec)
        var range=$(".lb4 .range")
        range.css("width",y*sec)
        var value=$(".lb4 span.value")
        var bw=$(".right .rig.bw i")
        switch(y){
            case 1:
                value.html("25M")
                bw.html("25M")
                break
            case 2:
                value.html("50M")
                bw.html("50M")
                break
            case 3:
                value.html("75M")
                bw.html("75M")
                break
            case 4:
                value.html("100M")
                pan.html("100M")
                break
            default:
                value.html("1M")
                pan.html("1M")
        }
    })

    //防御峰值
    var fz=$(".lb5 .slbox")
    fz.click(function(e){
        var x = e.pageX;
        var width =x-m-left-25;
        var rlen=fz.width()
        var len=$(".lb5 .rule span").length-1
        var sec=Math.floor(rlen/len)
        var y=Math.round(width/sec)
        var handle=$(".lb5 .handle")
        handle.css("left",y*sec)
        var range=$(".lb5 .range")
        range.css("width",y*sec)
        var value=$(".lb5 span.value")
        var fy=$(".right .rig.fy")
        switch(y){
            case 1:
                value.html("30G")
                fy.html("30G")
                break
            case 2:
                value.html("50G")
                fy.html("50G")
                break
            case 3:
                value.html("70G")
                fy.html("70G")
                break
            case 4:
                value.html("100G")
                fy.html("100G")
                break
            default:
                value.html("10G")
                fy.html("10G")
        }
    })
})