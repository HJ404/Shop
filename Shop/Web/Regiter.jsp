<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
</head>
<body class="login">
<link href="css/style.css" rel="stylesheet" type="text/css">
<div class="login_m">
	<div class="login_logo"><img src="images/logo.png" width="196" height="60"></div>
	<div class="login_boder">
		<div class="login_padding">
			<form action="Check.jsp" method="post">
			<h2>用户名</h2>
			<label>
				<input type="text" name="username" id="username" class="txt_input txt_input2" >
			</label>
			<h2>密码</h2>
			<label>
				<input type="password" name="password" id="password" class="txt_input" >
			</label>
                <h2>电子邮箱</h2>
            <label>
				<input type="text"  name="Email" id="Email" class="txt_input txt_input2" >
			</label>
            <label>
                <h2>电子邮箱</h2>
                <input type="text"  name="Email" id="Email1" class="txt_input txt_input2" >
            </label>

			<div class="rem_sub">

                <input type="submit" class="sub_button" name="button" id="button" value="注册"  style="opacity: 0.7;" >
            </div>
				</form>
			</div>
		</div>
	</div><!--login_boder end-->
</div><!--login_m end-->
</body>
</html>
