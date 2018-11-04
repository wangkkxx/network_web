$(function(){
    $("a").click(function(e){
        e.preventDefault()
    })
    //域名查询
    $(".zyw a").click(function(e){         //中/英文域名
        e.preventDefault();
        var $a=$(this)
        $a.addClass("active").siblings(".active").removeClass("active")
    })
    $("label.checked").click(function(){     //域名类型checkbox
        $(this).toggleClass("on")
    })

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

    var pno=0
    function loadPage(no=0){
        pno=no
        $.ajax({
            url:"http://localhost:8000/domains/",
            type:"get",
            data:{pno},
            dataType:"json",
            success:function(output){
                var { domains,pageCount }=output;
                var html=""
                for(var k of domains){
                    var {did,domain,title,original_price,now_price,renewal_price,shift_price}=k
                    if(k.original_price!=0){
                        html+=`<tr>
                            <td class="pdf50"><b>${k.domain}</b>${k.title}</td>
                            <td class="first-y"><s>${k.original_price}</s>${k.now_price}</td>
                            <td align="center">${k.renewal_price}</td>
                            <td align="center">${k.shift_price}</td>
                        </tr>`
                    }else{
                        html+=`<tr>
                            <td class="pdf50"><b>${k.domain}</b>${k.title}</td>
                            <td class="first-y">${k.now_price}</td>
                            <td align="center">${k.renewal_price}</td>
                            <td align="center">${k.shift_price}</td>
                        </tr>`
                    }
                }
                $("div.dn-list tbody").html(html)

                var html=""
                for(var i=1;i<=pageCount;i++){
                    html+=`<li class="${i==pno+1?'active':''}">${i}</li>`
                }
                var $ul=$("div.dn-2 ul.page")

                $ul.children(":not(:first-child):not(:last-child)").remove()
                $ul.children().first().after(html)
                if(pno==0){//如果当前页是第一页就禁用上一页
                    $ul.children().first().addClass("disabled")
                    //$ul.children().eq(1).addClass("active")
                }else{//否则就启用上一页
                    $ul.children().first().removeClass("disabled")
                }
                if(pno==pageCount-1){
                    $ul.children().last().addClass("disabled")
                }else{
                    $ul.children().last().removeClass("disabled")
                }
                /*var li=$("div.dn-2 ul.page li")
                    li.click(function(){
                        //$(this).addClass("disabled")
                        var n=$(this).index()-1
                        console.log(n)
                        //loadPage(n)
                        if(n>=0 && n<=4){
                            loadPage(n)
                           
                        }
                        //}else if(n==-1) 
                })*/
                
            }
        })
    }
    loadPage();

    var $ul=$("div.dn-2 ul.page")
    $ul.on("click","li",function(){
        var li=$(this)
        if(!li.is(".disabled",".active")){
            if(li.is(":first-child")) var no=pno-1
            else if(li.is(":last-child")) var no=pno+1
            else var no=li.html()-1;
            loadPage(no)
            }
        
    })
    
})