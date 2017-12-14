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
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">

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

	<%-- top --%>

	<div id="top">
		<img src="./image/img.png"> <a
			href="https://www.instagram.com/?hl=ja"> <span
			style="font-size: 220%; opacity: 0.5; color: #e29399;"><i
				class="fa fa-instagram"></i></span></a> <a href="https://twitter.com/?lang=ja">
			<span style="font-size: 220%; opacity: 0.5; color: #e29399;"><i
				class="fa fa-twitter"></i></span>
		</a> <a href="https://ja-jp.facebook.com"> <span
			style="font-size: 220%; opacity: 0.5; color: #e29399;"><i
				class="fa fa-facebook-square"></i></span></a>

	</div>

	<%-- menu --%>

	<div id="header">

		<div id="menu">
			<ul>
				<li><a href="#">TOP</a></li>
				<li><a href="#">NEWS</a></li>
				<li><a href="#">SNAP</a></li>
				<li><a href="#">STORE</a></li>
				<li><a href="#">ONLINESHOP</a></li>
			</ul>
		</div>

	</div>


	<%-- main --%>

	<div id="main">


    <%-- main - slideshow --%>
		<div class="slideshow">
			<ul class="bxslider">
				<li><img src="./image/img3.png"></li>
				<li><img src="./image/img4.png"></li>
				<li><img src="./image/img5.png"></li>
			</ul>
		</div>

	</div>

	<%-- footer --%>

	<div id="footer">
		<div id="copy">©All Right Reserved.</div>
	</div>

	<script type="text/javascript" src="script.js"></script>
</body>
</html>