<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>登録確認</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row">
			<h5 class="col text-center">登録確認</h5>
			<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>

		</div>
		<div class="row">
			<div class="section"></div>
			<div class="col-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<form action="RegistResult" method="POST">
							<div class="row">
								<div class="form-group col-10">
									<label>名前</label> <input type="text" class="form-control"
										name="user_name" value="${udb.name}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>住所</label> <input type="text" class="form-control"
										name="user_address" value="${udb.address}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>ログインID</label> <input type="text" class="form-control"
										name="login_id" value="${udb.loginId}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>パスワード</label> <input type="password"
										class="form-control" name="password"
										value="${udb.loginPassword}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<p class="text-center">上記内容で登録してよろしいでしょうか?</p>
								</div>
							</div>
							<div class="row">
								<div class="col text-center">
									<button type="submit" class="btn btn-primary"
										name="confirm_button" value="cancel">修正</button>
								</div>
								<div class="col text-center">
									<button type="submit" class="btn btn-primary"
										name="confirm_button" value="regist">登録</button>
								</div>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>