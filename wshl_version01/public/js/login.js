$(function(){
    $("form").submit(function(e){
        e.preventDefault();
        var uname=$("form input.uname").val()
        var upwd=$("form input.upwd").val()
        $.ajax({
            url:"http://localhost:8000/login/",
            type:"post",
            data:{uname,upwd},
            dataType:"json",
            success:function(opt){
                alert(opt.msg)
                if(opt.code=="1"){
                    $(window).attr('location','logininfo.html')
                }
            }
        })
    })
    
})