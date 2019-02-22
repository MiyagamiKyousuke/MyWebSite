<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>登録完了</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row">
			<h5 class="col text-center">登録完了</h5>
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
									name="user_name" value="aaa" readonly>
							</div>
						</div>
						<div class="row">
							<div class="form-group col 10">
								<label>住所</label> <input type="text" class="form-control"
									name="user_address" value="千葉県" readonly>
							</div>
						</div>
						<div class="row">
							<div class="form-group col 10" >
								<label>ログインID</label> <input type="text" class="form-control"
									name="login_id" value="ABCD" readonly>
							</div>
						</div>
						<div class="row">
							<div class="form-group col 10">
								<label>ログインID</label> <input type="password"
									class="form-control" name="password" value="ABCD" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p class="text-center">上記内容で登録しました。</p>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p class="text-center">
									<a href="Login" class="btn btn-primary  col-8">ログイン画面へ</a>
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