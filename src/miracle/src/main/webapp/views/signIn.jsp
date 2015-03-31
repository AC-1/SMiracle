<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登入</title>
<style type="text/css">
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>

</head>
<body>

	<section id="login">
		<div class="container">
			<div class="row">
				<div class="col-xs-4">
				
				</div>
				<div class="col-xs-4">

					<form role="form" action="postlogin" method="post"
						id="login-form" autocomplete="off">
						<h2 class="form-signin-heading">登入</h2>
						<div class="form-group">
							<label for="inputEmail" class="sr-only">帳號</label> <input
								type="text" id="username" class="form-control" name="username"
								placeholder="帳號" required autofocus>
						</div>
						<div class="form-group">
							<label for="inputPassword" class="sr-only">Password</label> <input
								type="password" id="password" name="password"
								class="form-control" placeholder="密碼" required>
						</div>

						<div class="checkbox">
							<label> <input type="checkbox"  name="remember-me">
								記住我
							</label>
						</div>
						<button class="btn btn-lg btn-primary btn-block" type="submit">登入</button>
					</form>

				</div>
				
				<div class="col-xs-4">
				
				</div>
				<!-- /.col-xs-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	

</body>
</html>