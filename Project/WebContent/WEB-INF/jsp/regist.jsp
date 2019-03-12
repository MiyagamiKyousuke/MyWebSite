<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>新規登録</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="buyResult.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/regist.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h5 class=" col s12 aaa">新規登録</h5>
			<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>

		</div>
		<div class="row">
			<div class="section"></div>
			<div class="col-6 offset-md-3">
				<form action="RegistConfirm" method="POST">
					<div class="card">
						<div class="card-body">

							<div class="form-group">

								<div class="row">
									<div class="col-10">
										<div class="mb-3">
											<label for="username">名前</label>
											<div class="input-group">
												<input type="text" class="form-control" id="username"
													placeholder="名前 " name="name">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>

										</div>
										<div class="mb-3">
											<label for="username">住所</label>
											<div class="input-group">
												<input type="text" class="form-control" id="username"
													placeholder="住所" name="address">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>

										</div>
										<div class="mb-3">
											<label for="username">ログインID</label>
											<div class="input-group">
												<input type="text" class="form-control" id="username"
													placeholder="LoginID" name="loginId">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>
										</div>
										<div class="mb-3">
											<label for="username">パスワード</label>
											<div class="input-group">
												<input type="text" class="form-control" id="username"
													placeholder="LoginID" name="password">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>

										</div>
										<div class="mb-3">
											<label for="username">パスワード(確認)</label>
											<div class="input-group">
												<input type="text" class="form-control" id="username"
													placeholder="LoginID" name="password2">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>

										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
					<div class="row">
						<div class="col-10 btn_push">
							<button class="btn btn-primary btn-lg btn-block" type="submit">確認</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>