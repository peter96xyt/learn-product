$(function () {
    //ÇëÇóÊı¾İ
    $.ajax({
        url:"./header.html",
        type:"get",
        dataType:"html",
        success:function(msg){
            $("#header").html(msg);
        }
    });
});
