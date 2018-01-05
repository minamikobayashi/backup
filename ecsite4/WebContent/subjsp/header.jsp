<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">
</head>
<body>

	<div id="header">
		<div class="icon">
			<img src="./image/img.png">
		</div>
		
		<div class="title">FASSION SHOP</div>
		
		<div class="sns">
		<a href=""><span style="font-size: 220%; opacity: 0.5; color: #e29399;"><i class="fa fa-instagram"></i></span></a>
		<a href=""><span style="font-size: 220%; opacity: 0.5; color: #e29399;"><i class="fa fa-twitter"></i></span></a>
		<a href=""><span style="font-size: 220%; opacity: 0.5; color: #e29399;"><i class="fa fa-facebook-square"></i></span></a>
		</div>
		
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


</body>
</html>