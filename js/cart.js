$(function(){
    function loadPage(){
        $.ajax({
            type:"GET",
            url:"data/islogin.php",
            dataType:"json",
            success:function(data){
                if(data.ok==0){
                    location.href="login.html";
                }else{
                    $.ajax({
                        type:"GET",
                        url:"data/getCart.php",
                        dataType:"json",
                        success:function(items){
                            var html = "";
                            var sun = 0;
                            var total = 0;
                            for(var item of items){
                               var {is_checked, id, tname, weight, img, price, count}=item;
                               if(is_checked==1){
                                   total+=price*count;
                               }
                               html+=``;
                            }
                        }
                    })
                }
            },
            error:function(){
                alert('网络请求错误请重试!!!');
            }
        })
    }
})