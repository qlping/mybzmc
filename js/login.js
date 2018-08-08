
    $("#btn-submit").click(function(){
        // console.log($("#btn-submit"));
        // console.log("qlp");
        var $btn = $(this);
        var phone = $("#loginName").val();
        var upwd = $("#password").val();
        $.ajax({
            type:"GET",
            url:"data/signin.php",
            data:{phone:phone,upwd:upwd},
            success:function(msg){
                // console.log(msg);
                if(msg==="登录成功!"){
                    alert("登录成功");
                    location.href="index.html";
                }else{
                    alert("登录失败");
                }
            },
            error:function(){
                alert("网络请求错误！！！");
            }
        })
})