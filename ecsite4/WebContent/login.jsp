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
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<title>Login</title>
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


		<div class="pageback">
			<a href='<s:url action="GoHomeAction"/>'>TOP</a> &nbsp;>&nbsp; <a>ログイン</a>
		</div>
		<h2 class="title">ログイン</h2>
		<br> <br>
		<div class="login_box">
			<div class="member">

				<h3>登録済みのお客様</h3>

				<h5>
					<s:iterator value="errorMessageList">
						<s:div>
							<s:property />
						</s:div>
					</s:iterator>
				</h5>

				<div class="member_form">
					<s:form action="LoginAction" theme="simple" id="LoginForm">

						<div class="member_form_title">
							ユーザーID<br>
						</div>
						<div class="member_textbox">
							<s:textfield type="text" name="userId" value="%{#session.saveId}"
								class="validate[required,minSize[1],maxSize[16],custom[onlyLetterNumber]]" />
							<br>
						</div>

						<br>
						<div class="member_form_title">
							パスワード<br>
						</div>
						<div class="member_textbox">
							<s:password name="password"
								class="validate[required,minSize[1],maxSize[16],custom[onlyLetterNumber]]" />
						</div>

					※半角英数字のみで入力してください。<br>
					パスワードをお忘れの方は<a href="passwordResetting.jsp">こちら</a>


						<p>
							<s:checkbox name="saveLogin" />
							ID保存
						</p>

						<div class="member_btn">
							<button type="submit" class="">ログイン</button>
						</div>
					</s:form>
				</div>
			</div>



			<div class="nomember">
				<h3>初めてのお客様</h3>
				商品購入の際はユーザー登録をお願いします。<br> <br>
				<div class="nomember_btn">
					<a href='<s:url action="GoUserRegisterAction"/>'>新規ユーザー登録</a>
				</div>
			</div>
		</div>



	</div>
	<!--メインここまで -->

	<div id="footer">
		<p>©All Right Reserved.</p>
	</div>
</body>
</html>