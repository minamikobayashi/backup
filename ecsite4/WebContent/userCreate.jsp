<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>新規会員登録</title>
	<style type="text/css">
		/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Lucida Console, OCRB;
		   font-size:12px;
		   color:#333;
		   background:#fff;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========ID LAYOUT======== */
		#top {
		   width:500px;
		   margin:30px auto;
		   font-size:20px;
		   border:1px solid #333;
		}

		#header {
		   width: 100%;
		   height: 150px;
		   background-color: #b0c4de;
		}

		#main {
		   width: 100%;
		   height: 500px;
		   text-align: center;
		}

		#footer {
	       position: absolute;
	       bottom: 0;
	       width: 100%;
	       height: 150px;
	       background-color: #b0c4de;
	       clear: both;
	</style>
</head>
<body>
	<div id="header">
	 	<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>新規会員登録</p>
		</div>
		<div>
			<s:if test="errorMessage != ''">
				<s:property value="errorMessage" escape="false" />
			</s:if>
			<table>
			<s:form action="UserCreateConfirmAction">
				<tr>
					<td>
						<label>Mail:</label>
					</td>
					<td>
						<input type="text" name="mailAddress" value="" placeholder="example@shop.com"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>ID:</label>
					</td>
					<td>
						<input type="text" name="loginUserId" value="" placeholder="ID"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>Password:</label>
					</td>
					<td>
						<input type="text" name="loginPassword" value="" placeholder="パスワード"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>User Name:</label>
					</td>
					<td>
						<input type="text" name="userName" value="" placeholder="ユーザーネーム"/>
					</td>
				</tr>

				<s:submit value="登録"/>
			</s:form>
			</table>
			<br><br>
			<div>
				<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>
			</div>
		</div>
	</div>
		<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>