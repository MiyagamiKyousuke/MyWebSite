<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="login.css">

<meta charset=UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<div class="container">
		<div class="wrapper">
			<form action="" method="post" name="Login_Form" class="form-signin">
				<h3 class="form-signin-heading">ログイン画面</h3>
				<hr class="colorgraph">
				<br> <input type="text" class="form-control" name="Username"
					placeholder="Username" required="" autofocus="" /> <input
					type="password" class="form-control" name="Password"
					placeholder="Password" required="" />

				<button class="btn btn-lg btn-primary btn-block" name="Submit"
					value="Login" type="Submit">Login</button>
			</form>
		</div>
	</div>
</body>
</html>