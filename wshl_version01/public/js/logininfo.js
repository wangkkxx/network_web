$(function(){
    $(window).load(function(){
        $(".left ul.hygl").css("display","block")
    })
    $(".left div.tab").click(function(){
        $(this).siblings().removeClass("active")
        $(this).toggleClass("active").next().slideToggle()
        $(this).next().toggleClass("active")
    })
    //请求用户信息
    $.ajax({
        url:"http://localhost:8000/login/info",
        type:"get",
        dataType:"json",
        success:function(res){
            var uname=res.user.uname,
                user_name=res.user.user_name
            $(".right .hr a.name").html(uname)
            $("p.user_name").html(user_name)
            $("p.money b").html(res.user.money.toFixed(2)+"元")
            var kname=res.user.kf
            $(".my_zh span.cs").html("("+kname+")")
            $.ajax({
                url:"http://localhost:8000/login/kf",
                type:"get",
                data:{kname},
                dataType:"json",
                success:function(res){
                    $("b.rname").html(res.rname)
                    $("b.kphone").html(res.kphone)
                    $("b.kqq").html(res.kqq)
                }
            })
        }
    })
    //退出登录
    $(".right .hr a.quit").click(function(e){
        e.preventDefault();
        $.ajax({
            url:"http://localhost:8000/login/out",
            type:"get",
            success:function(){ 
                $(window).attr('location','/')
            }
        })
    })
})