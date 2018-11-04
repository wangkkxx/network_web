$(function(){
    var ipt=$(".ptn5 input.ipt")
    var ts=$(".ptn5 p")
    ipt.on("focus",function(){
        ipt.removeClass("active")
        $(this).addClass("active")
        ts.removeClass("active")
        $(this).parent().next().addClass("active")
    })
    function vali(txt,reg){
        var warn=txt.parent().next()
        var fail=txt.parent().next().next()
        var success=txt.parent().next().next().next()
        if(reg.test(txt.val())){
            warn.removeClass("active")
            fail.removeClass("active")
            success.addClass("active")
        }else{
            warn.removeClass("active")
            fail.addClass("active")
            success.removeClass("active")
        }
    }
    $("#pname").on("blur",function(){
        var reg=/^[a-zA-Z0-9]{4,14}$/
        vali($(this),reg)
    })
    $("#ppwd").on("blur",function(){
        var reg=/^[a-zA-Z0-9]{6,14}$/
        vali($(this),reg)
    })
    $("#cptname").on("blur",function(){
        var reg=/^[\u4e00-\u9fa5]{2,20}$/
        vali($(this),reg)
    })
    $("#cptname").on("blur",function(){
        var reg=/^[\u4e00-\u9fa5]{0,20}$/
        vali($(this),reg)
    })
    $("#qq").on("blur",function(){
        var reg=/^[1-9][0-9]{4,15}$/
        vali($(this),reg)
    })
    $("#phone").on("blur",function(){
        var reg=/^1[3-8]\d{9}$/
        vali($(this),reg)
    })
    $("#pid").on("blur",function(){
        var reg=/^[1-9]\d{5}(19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
        vali($(this),reg)
    })
})