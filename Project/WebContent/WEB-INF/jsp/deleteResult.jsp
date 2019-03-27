<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset=UTF-8>
<title>削除完了</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<!--  <link rel="stylesheet" href="buyResult.css">-->
<link rel="stylesheet" href="../CSS/regist.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/regist.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<h5 class="col text-center">削除完了</h5>
			<!--<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>-->

		</div>
		<div class="row">
			<div class="section"></div>
			<div class="col-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="form-group col 10">
								<label>名前</label> <input type="text" class="form-control"
									name="user_name" value="${user.name}" readonly>
							</div>
						</div>
						<div class="row">
							<div class="form-group col 10">
								<label>住所</label> <input type="text" class="form-control"
									name="user_address" value="${user.address}" readonly>
							</div>
						</div>
						<div class="row">
							<div class="form-group col 10" >
								<label>ログインID</label> <input type="text" class="form-control"
									name="login_id" value="${user.loginId}" readonly>
							</div>
						</div>
						<div class="row">
							<div class="form-group col 10">
								<label>ユーザーID</label> <input type="text"
									class="form-control" name="password" value="${user.id}" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p class="text-center">上記内容で削除しました。</p>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p class="text-center">
									<a href="AdminIndex" class="btn btn-primary  col-8">管理者TOP</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>