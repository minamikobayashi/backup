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
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="./css/registration.css">
	<title>Registration</title>
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
				<li><a href="#">HOME</a></li>
				<li><a href="#">NEWS</a></li>
				<li><a href="#">SNAP</a></li>
				<li><a href="#">STORE</a></li>
				<li><a href="#">ONLINESHOP</a></li>
			</ul>
		</div>

	</div>


	<%-- main --%>

	<div id="main">
	<br>
	<div  class="pageback">
	<a href="/" class="">TOP</a>
	&nbsp;>&nbsp;
	<a>LOGIN</a>
    </div>

	<h1 class="title">ログイン</h1>



	<div class="menber">
	<h3>ONLINE SHOPにログイン</h3>
	<div class="member_form"></div>
	<s:form action="">
	</s:form>
	<input type="text">
	<input type="text">
	<s:submit value="ログイン"/>
	</div>
 </div>
</body>
</html>