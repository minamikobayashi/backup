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
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="./css/news.css">
<title>NEWS</title>
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

		<h1 style="border-style: solid; border-width: 1px; width: 200px;">NEWS</h1>
		<br>

		<div class="topic">

			<h2>Oct 24,2017</h2>
			<h3>
				<B>Autumn Winter 2nd 2017 Collection<br> カタログ掲載アイテム販売スタート
				</B>
			</h3>

			10/24（火）よりUSAGI ONLINEにて<br> Autumn Winter 2017 Collection<br>
			カタログ掲載アイテムの販売がスタート致しました。
		</div>

		<br> <img src="./image/img7.png"> <br>
		<br>
		<br>

		<hr>

		<br>


		<div class="topic">

			<h2>Aug 20, 2017</h2>
			<h3>
				<B>2017 AUTUMN WINTER Collection Fair</B>
			</h3>

			8/20(日)より全店で 23,000yen+tax以上お買上げのお客様に<br>
			オリジナルショルダーバッグをプレゼント致します。<br> (※無くなり次第終了とさせていただきます。)
		</div>

		<br> <img src="./image/img6.jpg"> <br>
		<br>
		<br>

		<hr>

	</div>

	<%-- footer --%>

	<div id="footer">
		<p>©All Right Reserved.</p>
	</div>

</body>
</html>
