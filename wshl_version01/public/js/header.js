$(function(){
    //ajax请求header.html片段
    $.ajax({
        url:"http://localhost:8000/header.html",
        type:"get",
        success: function(res) {
            $("nav#top-nav").replaceWith(res)
        }
    })
    $("<link rel='stylesheet' href='css/base.css'>").appendTo("head")
})