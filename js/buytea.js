//遮罩
$(function() {
    var $dialog = $("#dialog");
    var $mask = $(".mask");
// console.log($dialog);
//     $dialog.dialog({
//         autoOpen: false,
//         modal: true,
//         show: {effect: "explode", duration: 500},
//         hide: {effect: "explode", duration: 500}
//     });
    //console.log($("#about-it").html());

    $(".box").on("click", "#about-it", function (e) {
        var id=$(this).data("id");
        loadDetail(id);
        e.preventDefault();
        // $dialog.show(1000);
        // console.log(this.href);
        // loadDetail(1);
        $dialog.slideDown(200);
        $mask.show();
    })
    $(".close").on("click", "img", function (e) {
        e.preventDefault();
        // $dialog.hide(1000);
        $dialog.slideUp(200);
    })
    // 退出登录
    // function signOut() {
    //     $.ajax({
    //         type: "GET",
    //         url: "data/signout.php",
    //         // dataType:"json",
    //         success: function (data) {
    //             // console.log(data);
    //         },
    //         error: function () {
    //             alert("网络请求错误，请重试！")
    //         }
    //     })
    // }
    //signOut();
    //加载茶叶
    function loadTea(pno,pageSize) {
        var tea = document.getElementById("tea");
        var page = document.getElementById("number");
        var dialog = document.getElementById("dialog");
        // console.log(page);
        $.ajax({
            type: "GET",
            url: "data/buytea.php",
            dataType: "json",
            data:{pno,pageSize},
            success: function (data) {
                // console.log(data);
                // console.log(data.data);
                var {data, pno, pageCount, pageSize} = data;
                // console.log(data);
                var html = "";
                //var {img, tname, weight, price} = data[1];
                for (var i of data) {
                    var {img, tname, weight, price,id} = i;
                    html += `<div class="tea-list lf">
			     <!--图片 -->
			    <div class="img">
			    <a href="#">
				      <img src="${img}" alt="">
				   </a>
				</div>
				<!-- 了解 -->
			    <div class="know">
				   <a href="#" id="about-it" data-id="${id}">了解他</a>
				</div>
				<!-- 详情 -->
			    <div class="about">
				   <div class="relize">
				      <p>${tname}</p>
				      <p>重量：${weight}</p>
				      <p>¥${price}</p>
				   </div>
				</div>
			 </div>`
                }
                tea.innerHTML = html;
                // 1创建字符串拼接页码条[1][2][3][4]
                //var {pno, pageCount, pageSize} = data;
                // console.log(pageCount);
                // var pno = parseInt(data.pno);
                var html = "";
                html +=
                    `<a href="javascript:;" class="previous">上一页</a>`;
                for (var i = 1; i < pageCount+1; i++) {
                    // console.log(i);
                    if (i == pno)
                        html += `<a href="javascript:;" class="current active">${i}</a>`;
                    // console.log("ddd");
                    else
                        html += `<a href="javascript:;">${i}</a>`
                }
                html += `<a href="javascript:;" class="next">下一页</a>`;
                page.innerHTML = html;
                var aPrev = document.querySelector("#pages>a.previous"),
                    aNext = document.querySelector("#pages>a.next");
                if (pno === 0) aPrev.className += " disabled";
                if (pno === pageCount - 1) aNext.className += " disabled";
                // html += ``;
            },
            error: function () {
                alert("网络请求错误，请重试！")
            }
        })
    }
    //分页条

    $("#number").on("click","a",function(e){

        e.preventDefault();
        var pno=parseInt($(".active").html());
        var $a=$(this);
        console.log($a);
        if($a.html()=="上一页"){
            if(pno>1){
                pno--;
            }else{
                pno=1;
            }
        }else if($a.html()=="下一页"){
            if(pno<7){
                pno++;
            }else{
                pno=7;
            }
        }else{
            pno=$a.html();
        }
        loadTea(pno,9);
    })
    loadTea(1,9);
    // 查询茶叶详情
    function loadDetail(id){
        var form = document.getElementById("#form2");
        $.ajax({
            type:"GET",
            url:"data/details.php",
            dataType:"json",
            data:{id:id},
            success:function(data){
                // console.log("哈哈哈");
                // console.log(data);
                var html = "";
                var {id,img,tname,weight,detail,price,amount} = data;
                for(var i of data){
                    var {img,tname,weight,detail,price,amount} = i;
                 // console.log(i);
                html += `<div class="clearfix">
    		      <div class="teaImg lf">
    			     <img src="${img}" alt=""class="_pcuslis">
    			  </div>
    		      <div class="right lf">
    			     <div class="tname">
    			     ${tname}
    				 </div>
    			     <div class="long">
    				    产品规格：
    					<br>
    					<span class="weight">${weight}</span>
    					<br><br>
    					产品简介:
    					<br>
    					<span class="detail">
    					${detail}
    					</span>
    				 </div>
    			     <div class="money">
    				    单价：¥
    					<font class="price" id="price">${price}</font>
    				 </div>
    			     <div class="shuliang clearfix">
    				    <div class="lf">数量：</div>
    					<div class="lf">
    					   <div class="amount lf">
    					      <a href="#" class="jian lf">
    						     <i></i>
    						  </a>
    						  <input type="text" class="inAmount lf" name="amount" maxlength="3" autocomplete="off" value="1">
    						  <a href="#" class="jia">
    						     <i></i>
    						  </a>
    					   </div>
    					</div>
    				 </div>
    			     <div class="count">
    				    总价：¥
    					<font class="total" id="total">${price}</font>
    				 </div>
    			     <div class="index-tea clearfix">
    				    <button class="btn-buy lf">立即购买</button>
    					<button class="add-shopping lf">加入购物车</button>
    				 </div>
    			  </div>
    		   </div>`;

               }
                // form.innerHTML = html;
                $("#form2").html(html);
                $(".jia").click(function(){
                    var amount = $(".inAmount").val();
                    if(amount>=100){
                        amount=100;
                    }else{
                        amount++;
                        $(".inAmount").val(amount);
                        var  total=parseFloat($("#price").html()).toFixed(2);
                        total*=amount;
                        total=total.toFixed(2);
                        $("#total").html(total);
                    }
                });
                $(".jian").click(function(){
                    var amount = $(".inAmount").val();
                    if(amount>1){
                        amount--;
                        $(".inAmount").val(amount);
                        var  total=parseFloat($("#price").html()).toFixed(2);
                        total*=amount;
                        total=total.toFixed(2);
                        $("#total").html(total);
                    }else{
                        amount=0;
                    }
                });
                $("#form2").on('click','.add-shopping',function(e){
                    e.preventDefault();
                    alert('zhixingdao 1')
                // $("").click(function(){
                    console.log('');
                    $.ajax({
                        type:"GET",
                        url:"data/islogin.php",
                        dataType:'json',
                        success:function(data){
                            console.log(data);
                            if(data.ok==0){
                                location.href="login.html";
                            }else{
                                alert('加入购物车成功！');
                                // location.href="cart.html";
                                // $.ajax({
                                //     type:'GET',
                                //     url:'',
                                // })
                            }
                        },
                        error:function(){
                            alert("网络请求错误！！！");
                        }
                    })
                })
            },
            error:function(){
                alert("网络错误请检查！！！")
            }
        })

    }
})



