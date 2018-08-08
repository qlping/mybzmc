var i=0;
$("#phone").blur(function(){
    var phone = $("#phone").val();
    var reg = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
    if(reg.test(phone)){
             // i++;
        $.ajax({
            type:"GET",
            url:"data/yzphone.php",
            data:{phone:phone},
            success:function(msg){
                console.log(msg);
                if(msg=="用户可用"){
                    $("#yzphone").html("手机号可用");
                    i++;
                }else{
                    $("#yzphone").html("手机号已存在");
                }
            },
            error:function(){
                alert("网络请求错误！！！");
            }
        })
    }else{
        $("#yzphone").html("手机号格式不正确");
    }
})
$("#tage").blur(function(){
    var tage = $("#tage").val();
    var reg=/^[0-9]{1,2}$/;
    if(reg.test(tage)){
        $("#yztage").html("茶龄正确");
        i++;
    }else{
        $("#yztage").html("茶龄格式不正确");
    }
});
$("#password").blur(function(){
    var upwd = $("#password").val();
    var reg=/^[0-9]{3,}$/;
    if(reg.test(upwd)){
        $("#yzpwd").html("密码正确");
        i++;
    }else{
        $("#yzpwd").html("密码格式不正确");
    }
});
$("#cpwd").blur(function(){
    var upwd = $("#password").val();
    var cpwd = $("#cpwd").val();
   if(cpwd==upwd&&cpwd!==""){
       $("#yzcpwd").html("密码正确");
       i++;
   }else{
       $("#yzcpwd").html("两处密码不一致");
   }
});
$("#btn-submit").click(function(e){
    e.preventDefault();
    var $btn = $(this);
    var phone = $("#phone").val();
    var upwd = $("#password").val();
    var gender = $("#gender").val();
    gender=="男"?gender=1:gender=0;
    var tage = $("#tage").val();
    var cpwd = $("#cpwd").val();
    if(i==4){
        $.ajax({
            type: "POST",
            url: "data/register.php",
            data: {phone, upwd, gender, tage},
            success: function (msg) {
                console.log(msg);
                if (msg === "用户注册成功!") {
                    alert("用户注册成功！")
                    location.href = "login.html";
                } else {
                    alert("注册失败");
                }
            },
            error: function () {
                alert("网络请求错误！！！");
            }
        })
    }
})


