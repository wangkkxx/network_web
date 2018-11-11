$(function(){
    //输入框获取焦点时提示
    var int=$("form input.int")
    var tx=$("form li p")
    int.on("focus",function(){
        tx.removeClass("active")
        $(this).next().addClass("active")
    })
    //表单验证
    function vali(reg,txt,fail,success){
        if(reg.test(txt.val())){
            txt.parent().append("<p class='success'>"+success+"</p>")
            return true
        }else{
            txt.parent().append("<p class='fail'>"+fail+"</p>")
            return false
        }
    }
    $("#pname").on("blur",function(){
        $(this).next().remove()
        var reg=/^[a-zA-Z0-9]{4,14}$/;
        var uname=$(this).val();
        if(reg.test($(this).val())){
            (async function(){
                var res=await $.ajax({
                  url:"http://localhost:8000/register/check",
                  type:"get",
                  data:{uname},
                  dataType:"json"
                })
                if(res.code==0){
                    $("#pname").parent().append("<p class='fail'>该用户名已被注册,请更换</p>");
                }else
                    $("#pname").parent().append("<p class='success'>检查通过</p>");
            })();
        }else{
            $(this).parent().append($("<p class='fail'>用户名长度需要在4-14之间!</p>"));
        }
    })
    $("form :input").blur(function(){
        var reg,fail,success
        if($(this).is("#ppwd")){
            $(this).next().remove()
            reg=/^[a-zA-Z0-9]{6,14}$/
            fail="密码长度需要在4-14之间!"
            success="密码检查通过"
            vali(reg,$(this),fail,success)
        }else if($(this).is("#cptname")){
            $(this).next().remove()
            reg=/^[\u4e00-\u9fa5]{2,20}$/
            fail="姓名(公司名)格式有误"
            success="检查通过"
            vali(reg,$(this),fail,success)
        }else if($(this).is("#pid")){
            $(this).next().remove()
            reg=/^[1-9]\d{5}(19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/
            fail="身份证格式有误"
            success="检查通过"
            vali(reg,$(this),fail,success)
        }else if($(this).is("#qq")){
            $(this).next().remove()
            reg=/^[1-9][0-9]{4,15}$/
            fail="QQ号格式有误"
            success="检查通过"
            vali(reg,$(this),fail,success)
        }else if($(this).is("#phone")){
            $(this).next().remove()
            reg=/^1[3-8]\d{9}$/
            fail="手机号格式有误"
            success="检查通过"
            vali(reg,$(this),fail,success)
        }else if($(this).is("#email")){
            $(this).next().remove()
            reg=/^([a-zA-Z0-9_\.\-])+\@([a-zA-Z0-9_\-\.])+\.([a-zA-Z]{2,4})$/
            fail="邮箱格式有误"
            success="检查通过"
            vali(reg,$(this),fail,success)
        }else if($(this).is("#repwd")){
            $(this).next().remove()
            if($(this).val()!=="" && $("#ppwd").val()!=="" && $(this).val()==$("#ppwd").val()){
                $(this).parent().append("<p class='success'>检查通过</p>")
            }else{
                $(this).parent().append("<p class='fail'>密码前后不一致</p>")
            }
        }
    })
    
    //表单提交
    $("form").submit(function(e){
        e.preventDefault();
        var uname=$("#pname").val(),
            upwd=$("#ppwd").val(),
            user_name=$("#cptname").val(),
            user_id=$("#pid").val(),
            qq=$("#qq").val(),
            phone=$("#phone").val(),
            email=$("#email").val(),
            kf=$("form select.sbox").val()
        //判断所有输入框是否都验证通过:即输入框是否有下一个带有success属性的兄弟元素
        var arr=[$("#pname"),$("#ppwd"),$("#repwd"),$("#cptname"),$("#pid"),$("#qq"),$("#phone"),$("#email")]
        var sum=0
        for(var i in arr){
            if(arr[i].next().is(".success")) sum+=1
        }
        if(sum==arr.length){
            (async function(){
                var res=await $.ajax({
                  url:"http://localhost:8000/register/",
                  type:"post",
                  data:{uname,upwd,user_name,user_id,qq,phone,email,kf},
                  dataType:"json"
                })
                if(res.ok==0)
                  alert(res.msg);
                else{
                  alert("注册成功！,请登录");
                  $(window).attr('location','login.html');
                }
              })()
        }else{
            alert("注册信息有误,请重新填写!")
        }
        

    })
})