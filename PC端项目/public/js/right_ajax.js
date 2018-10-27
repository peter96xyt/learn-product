$.ajax({
    url:"./right.html",
    type:"get",
    dataType:"html",
    success:function(msg){
        $("#right").html(msg);
    }
})