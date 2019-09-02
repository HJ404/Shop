<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>购物网</title>
</head>
<body>
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>

<body class="login">

<div class="login_m">
	<div class="login_logo"><img src="images/logo.png" width="196" height="60"></div> 
	<div class="login_boder">
		<div class="login_padding">
		<form action="validate.jsp" name="login">
			<h2>用户名</h2>
			<label>
				<input type="text" name="username" id="loginUsername" class="txt_input txt_input2" >
			</label>
			<h2>密码</h2>
			<label>
				<input type="password" name="password" id="loginPassword" class="txt_input" >
			</label>
			<p class="forgot"><a href="javascript:void(0);">忘记密码?</a></p>
			<div class="rem_sub">
				<div class="rem_sub_l"> 
					<a href="index2.jsp">返回主页</a>
				</div>
					
					<input type="submit" class="sub_button" name="button" id="button" value="登录"  style="opacity: 0.7;">
			</div>
				</form>
			</div>
		</div>
	</div>
</div>


</body>
</html>