//广告轮播
$(function(){
    var $ul = $(".banner-img");
    // console.log($ul);
    var LIWIDTH = 1920,interval=500,wait=3000,moved=0,timer=null;
    $.ajax({
        type:"GET",
        url:"data/getCaroucel.php",
        dataType:"json",
        success:function(data){
            // console.log(data);
            var html = "";
            for(var c of data){
                var {img,href,title}=c;
                html += `<li>
			       <a href="${href}" title="${title}">
					  <img src="${img}">
				   </a>
			    </li>`;
            }
            var {img,href,title}=data[0];
            html += `<li>
			       <a href="${href}" title="${title}">
					  <img src="${img}">
				   </a>
			    </li>`;
            $ul.html(html).css("width",LIWIDTH*(data.length+1));
            autoMove();
        },
        error:function(){
            alert("网络请求错误！！！");
        }
    });
    var $left = $(".prev"),
        $right = $(".next");
    $right.click(function(){
        if(!$ul.is(":animated")){
            move();
        }
    })
    $left.click(function(){
        if(!$ul.is(":animated")){
            if(moved==0){
                moved=$ul.children().length-1;
                $ul.css("left",-moved*LIWIDTH)
            }
            moved--;
            $ul.animate({
                left:-moved*LIWIDTH
            },interval)
        }
    });
    function autoMove(){
        timer = setInterval(function(){
            move();
        },wait);
    }
    function move(){
        moved++;
        // console.log(moved);
        $ul.animate({
            left:-moved*LIWIDTH
        },interval,function(){
            if(moved==$ul.children().length-1){
                $ul.css("left",0);
                moved = 0;
            }
        })
    }
    // console.log($(".banner-img"));
    // console.log($(".banner"));
   /* */
   $(".banner").mouseenter(function(){
        clearInterval(timer);
        timer = null;
    }).mouseleave(function(){
        autoMove();
    })
});