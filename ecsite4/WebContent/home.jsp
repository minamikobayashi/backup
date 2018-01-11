<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet" type="text/css" href="./css/home.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="./jquery.bxslider/jquery.bxslider.min.js"></script>
<link href="./jquery.bxslider/jquery.bxslider.css" rel="stylesheet">

<script type="text/javascript">
$(function(){
$(".bxslider").bxSlider({

auto: true,
controls: false,
mode: 'fade',
speed: 1000

});
});

</script>

<title>SHOP</title>

</head>
<body>

	
<div id="header">
		<div class="icon">
			<img src="./image/img.png">
		</div>
		
		<div class="title">FASSION SHOP</div>
		
		<div class="menu">
			<ul>
				<li><a href="GoHomeAction">TOP</a></li>
				<li><a href="GoNewsAction">NEWS</a></li>
				<s:if test="!#session.loginFlg">
					<li><a href="GoLoginAction">LOGIN</a></li>
				</s:if>
				<s:else>
					<li><a href="LogoutAction">LOGOUT</a>
				</s:else>

				<li><a href="GoCartAction">CART</a>
				<li><a href="ProductInfoAction">STORE</a></li>
				<s:if test="#session.loginFlg">
					<li><a href="MyPageAction">MYPAGE</a></li>
				</s:if>
				<s:else>
				</s:else>

			</ul>
		</div>
		
	</div>

	<div id="main">

		<div class="slideshow">
			<ul class="bxslider">
				<li><img src="./image/img3.png"></li>
				<li><img src="./image/img4.png"></li>
				<li><img src="./image/img5.png"></li>
			</ul>
		</div>

	</div>

	<div id="footer">
		<p>©All Right Reserved.</p>
	</div>

	<script type="text/javascript" src="script.js"></script>
</body>
</html>