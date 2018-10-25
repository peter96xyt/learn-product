$.ajax({  
    url:"./footer.html",  
    type:"get",  
    dataType:"html",  
    success:function(msg){   
        $("#footer").html(msg);  
    } 
});