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
	<link rel="stylesheet" type="text/css" href="./css/login.css">
	<title>Login</title>
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

	<%-- main - pageback --%>
	<div  class="pageback">
	<a href="/" class="">TOP</a>
	&nbsp;>&nbsp;
	<a>LOGIN</a>
    </div>

    <%-- main - login --%>
	<h1 class="title">ログイン</h1><br>


    <%-- main - login - menber --%>
	<br><div class="member">
	<h2>ONLINE SHOPにログイン</h2>
	<div class="member_form">
	<s:form action="">
	<div class="member_form_title">メールアドレス<br></div>
	<div class="member_textbox">
	<input class="" type="text" name="mailaddres" placeholder="例:online123@store.com"
	autocomplete="off" maxlength="256"><br></div>

	<br><div class="member_form_title">パスワード<br></div>
	<div class="member_textbox">
	<input class="" type="password" name="password" autocomplete="off" maxlength="50"
	onkeydown="if(event.keycode=13){dologin();}"></div>

	<h5>※半角、全角、スペースも認識されますのでご注意ください。</h5>

	<div class="member_btn"><button type="submit" class="" >ログイン</button></div>
	</s:form></div></div>



	<div class="nomember">
	<h2>初めてのお客様</h2>
	<h5>商品購入の際は会員登録をお願いします。</h5>
	<div class="nomember_btn"><button type="submit" class="" >新規会員登録</button></div>
	</div>



 </div>

<%-- footer --%>

	<div id="footer">
		<div id="copy">©All Right Reserved.</div>
	</div>

	<script type="text/javascript" src="script.js"></script>
</body>
</html>