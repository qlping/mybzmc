$(function(){
  $("#header").load("header.html",function(){
      var link=document.createElement("link");
      link.rel="stylesheet";
      link.href="css/header.css";
      document.head.appendChild(link);
      $.ajax({
          type:"GET",
          url:"data/islogin.php",
          dataType:"json",
          success:function(data){
              if(data.ok==0){
                  $("#login").show().next().hide();
              }else{
                  var {phone} = data;
                 $("#islogin").children("a").html(phone+"<i></i>").parent().parent().prev().hide();
              }
          }
      })
  })
  $("#header").on("click","#signout",function(e){
      e.preventDefault();
      console.log(11);
      $.ajax({
          type:"GET",
          url:"data/signout.php",
          success:function(){
              location.reload(true);
          }
      })
  })
  $("#header").on("mouseenter","#islogin",function(){
     $(".exit").css("height",126)
  })
  $("#header").on("mouseleave","#islogin",function(){
     $(".exit").css("height",0) 
  })
  // $("#woshiid").click(function(e) {
  //     e.preventDefault();
  //     // $(".exit").css("height",126)
  //     console.log(1111);
  // })
    // }).mouseleave(function(){
    //     $(".exit").css("height",0).hide();
    // })
});