<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
 <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
   <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="./css/style.css" type="text/css"> 
   <script language='javascript' src='./js/main.js'></script> 
</head>
<body>
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form">
			<h2><br></h2>
			<hr class="colorgraph">
			<div class="form-group">
				<input type="text" name="user_name" id="user_name" class="form-control input-lg" placeholder="用户名" tabindex="3">
			</div>
			<div class="form-group">
				<input type="text" name="password" id="password" class="form-control input-lg" placeholder="登录密码" tabindex="3">
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6"><input type="submit" value="登录" class="btn btn-success btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-6 col-md-6"><a href="signup.jsp" class="btn btn-primary btn-block btn-lg">注册</a></div>
			</div>
		</form>
	</div>
</div>
</div>
</body>
</html>