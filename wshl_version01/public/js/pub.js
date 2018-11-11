$(function(){
    //ajax请求header.html片段
    $.ajax({
        url:"http://localhost:8000/header.html",
        type:"get",
        success: function(res) {
            $("nav#top-nav").replaceWith(res)
        }
    })
    //顶部导航栏滚动效果
    $(document).scroll(function(){
        var top=$(this).scrollTop();
        if(top>50){
            $("nav").addClass("black")
        }else{
            $("nav").removeClass("black")
        }
        var back=$("ul.fixed>li.db")
        if (top > 500) {
            back.slideDown("slow")
        } else {
            back.slideUp("slow")
        }
        
        //if(top>500) back.addClass("active")
    })
    //ajax请求footer.html片段
    $.ajax({
        url:"http://localhost:8000/footer.html",
        type:"get",
        success: function(res) {
            $("footer").replaceWith(res)
        }
    })
    $("<link rel='stylesheet' href='css/base.css'>").appendTo("head")
    //顶部导航栏IDC下拉菜单效果
    $(".idc ul:has([data-toggle=item])").on("mouseenter","[data-toggle=item]",function(e){
        e.preventDefault()
        var $li=$(this);
        var $a=$li.children().first();
        var id=$a.attr("href")
        $li.addClass("on").siblings().removeClass("on")
        $(id).addClass("active").siblings().removeClass("active")
    })
    //右侧固定栏
    $("ul.fixed>li").hover(function(){
        $(this).addClass("active").siblings().removeClass("active")
    },function(){
        $(this).removeClass("active")
    })
    //登录后导航栏右上角显示用户信息
    $.ajax({
        url:"http://localhost:8000/login/info",
        type:"get",
        dataType:"json",
        success:function(res){
            if(res.code==0) $("ul.out").show().next().hide();
            else{
                var uname=res.user.uname
                $("b.uname").html(uname)
                $("ul.out").hide().next().show();
            }
        }
    })
    //退出登录
    $("a.quit").click(function(e){
        e.preventDefault()
        $.ajax({
            url:"http://localhost:8000/login/out",
            type:"get",
            success:function(){ 
                $(window).attr('location','index.html')
            }
        })
    })
})