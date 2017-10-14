<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/loginDialog.css">
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script>
	$(function(){
		var _this1=null;
		$('.nav>li').hover(function(){
			_this1=$(this);
			_this1.find('.second-nav').show();
			var _this2=null;
			_this1.find('.second-nav').find('li').hover(function(){
				_this2=$(this);
				_this2.find('.third-nav').show();
				_this2.find('.third-nav').hover(function(){
					$(this).show();
				},function(){
					$(this).hide();
				});
			},function(){
				_this2.find('.third-nav').hide();
			});
		},function(){
			_this1.find('.second-nav').hide();
		});
		
		/* $(".top_nav").mousedown(function(e){ 
			$(this).css("cursor","move");//改变鼠标指针的形状 
			var offset = $(this).offset();//DIV在页面的位置 
			var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
			var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
			$(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 
			
				$(".popup").stop();//加上这个之后 
				
				var _x = ev.pageX - x;//获得X轴方向移动的值 
				var _y = ev.pageY - y;//获得Y轴方向移动的值 
			
				$(".popup").animate({left:_x+"px",top:_y+"px"},10); 
			}); 

		}); 

		$(document).mouseup(function() { 
			$(".popup").css("cursor","default"); 
			$(this).unbind("mousemove"); 
		}); */
		
		$("#login").click(function(){
			$("body").append("<div id='mask'></div>");
			$("#mask").addClass("mask").fadeIn("slow");
			$("#LoginBox").fadeIn("slow");
		});
		
		//按钮的透明度
		$("#loginbtn").hover(function () {
			$(this).stop().animate({
				opacity: '1'
			}, 600);
		}, function () {
			$(this).stop().animate({
				opacity: '0.8'
			}, 1000);
		});
		
		//关闭
		$(".close_btn").hover(function () { $(this).css({ color: 'black' }) }, function () { $(this).css({ color: '#999' }) }).on('click', function () {
			$("#LoginBox").fadeOut("fast");
			$("#RegisterBox").fadeOut("fast");
			$("#mask").css({ display: 'none' });
		});
		
		$("#register").click(function(){
			$("body").append("<div id='mask'></div>");
			$("#mask").addClass("mask").fadeIn("slow");
			$("#RegisterBox").fadeIn("slow");
		});
	});
	
	</script>
</head>
<body>
	<div class="header">
	<ul class="nav">
		<li><a href="#">恶魔果实</a>
			<ul class="second-nav">
				<li><a href="#">自然系</a></li>
				<li><a href="#">超人系</a></li>
				<li><a href="${pageContext.request.contextPath}/main_animal.action">动物系</a></li>
			</ul>
		</li>
		<li><a href="#">所属阵营</a>
			<ul class="second-nav">
				<li><a href="#">海军</a></li>
				<li><a href="#">七武海</a></li>
				<li><a href="#">海贼</a></li>
			</ul>
		</li>
		<li><a href="#">答题测试</a>
			<ul class="second-nav">
				<li><a href="#">碎花裙</a>
					<ul class="third-nav">
						<li><a href="#">仙女裙</a></li>
						<li><a href="#">荷叶裙</a></li>
					</ul>
				</li>
				<li><a href="#">阔腿裤</a></li>
			</ul>
		</li>
		<li><a href="#">在线视频</a>
			<ul class="second-nav">
				<li><a href="#">棒球服</a></li>
				<li><a href="#">小皮衣</a></li>
				<li><a href="#">小风衣</a></li>
				<li><a href="#">小披肩</a></li>
				<li><a href="#">小风衣</a></li>
			</ul>
		</li>
		<li><a href="#">网上商城</a>
			<ul class="second-nav">
				<li><a href="#">两件套</a>
					<ul class="third-nav">
						<li><a href="#">T恤+短裤</a></li>
						<li><a href="#">T恤+短裙</a></li>
						<li><a href="#">T恤+碎花裙</a></li>
					</ul>
				</li>
				<li><a href="#">背带裤</a></li>
				<li><a href="#">碎花裙</a>
					<ul class="third-nav">
						<li><a href="#">荷叶裙</a></li>
						<li><a href="#">仙女裙</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><a href="#">论坛</a>
			<ul class="second-nav">
				<li><a href="#">碎花裙</a>
					<ul class="third-nav">
						<li><a href="#">仙女裙</a></li>
						<li><a href="#">荷叶裙</a></li>
					</ul>
				</li>
				<li><a href="#">阔腿裤</a></li>
			</ul>
		</li>
		<li><a id="login" href="javascript:void(0)">登录</a></li>
		<!-- <li><button id="login">登录</button></li> -->
	</ul>
	</div>
	
	<div id="LoginBox">
        <div class="row1">
            登录窗口&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" id="register">注册</a>
            <a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn">×</a>
        </div>
        <div class="row">
            用户名: <span class="inputBox">
                <input type="text" id="txtName" placeholder="账号/邮箱" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn">*</a>
        </div>
        <div class="row">
            密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox">
                <input type="password" id="txtPwd" placeholder="密码" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
        </div>
        <div class="row">
            <a href="#" id="loginbtn">登录</a>
        </div>
    </div>
    <div id="RegisterBox">
        <div class="row1">
            注册窗口&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn">×</a>
        </div>
        <div class="row2">
            用&nbsp;&nbsp;户&nbsp;&nbsp;名: <span class="inputBox">
                <input type="text" id="txtName" name="username" placeholder="账号/邮箱" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn">*</a>
        </div>
        <div class="row2">
            密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox">
                <input type="password" id="txtPwd" name="password" placeholder="密码" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
        </div>
        <div class="row2">
            再输一次: <span class="inputBox">
                <input type="password" id="txtPwd" name="password1" placeholder="密码" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
        </div>
        <div class="row2">
            <a href="${pageContext.request.contextPath}/main_register.action" id="loginbtn">注册</a>
        </div>
    </div>
</body>
</html>