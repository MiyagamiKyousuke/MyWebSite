<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row">
			<h5 class="col text-center">入力内容確認</h5>
			<!--<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>-->

		</div>
		<div class="row">
			<div class="section"></div>
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<form action="" method="post">
							<div class="row">
								<div class="form-group col-10">
									<label>名前</label> <input type="text" class="form-control"
										name="user_name" value="${ubresult.name}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>ログインID</label> <input type="text" class="form-control"
										name="login_id" value="${ubresult.loginId}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>住所</label> <input type="text" class="form-control"
										name="user_address" value="${ubresult.address}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<p class="text-center">上記内容で更新しました</p>
								</div>
							</div>
							<div class="row">
								<div class="col text-center">
									<!--  <button type="submit" class="btn btn-primary"
										name="confirm_button" value="regist">ユーザー情報へ</button>-->
									<a href="UserData" class="btn btn-primary col-md-offset-2">ユーザー情報へ</a>
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