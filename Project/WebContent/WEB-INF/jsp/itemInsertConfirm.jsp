<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>商品登録確認</title>
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
<jsp:include page="adminHeader.jsp" />
<br>
<br>
<div class="container">
		<div class="row">
			<h5 class="col text-center">登録完了</h5>
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
									<label>商品名</label> <input type="text" class="form-control"
										name="user_name" value="${insertItem.itemName}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>カード種別</label> <input type="text" class="form-control"
										name="user_address" value="${cardType.card}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>値段</label> <input type="text" class="form-control"
										name="login_id" value="${insertItem.stPrice}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>画像名</label> <input type="text"
										class="form-control" name="password"
										value="${insertItem.fileName}" readonly>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<p class="text-center">上記内容で登録しました</p>
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