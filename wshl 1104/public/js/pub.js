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
})