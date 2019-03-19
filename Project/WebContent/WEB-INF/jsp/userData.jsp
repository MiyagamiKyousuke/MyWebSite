<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>ユーザー情報</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="userData.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row">
			<h5 class="col text-center">ユーザー情報</h5>
			<!--<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>-->

		</div>
		<div class="row">
			<div class="section"></div>
			<div class="col-12">
				<form action="UserDataUpdateConfirm" method="post">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="form-group col-10">
									<label>名前</label> <input type="text" class="form-control"
										name="user_name" value="${ub.name}">
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>ログインID</label> <input type="text" class="form-control"
										name="login_id" value="${ub.loginId}">
								</div>
							</div>
							<div class="row">
								<div class="form-group col-10">
									<label>住所</label> <input type="text" class="form-control"
										name="user_address" value="${ub.address}">
								</div>
							</div>

							<div class="row">
								<div class="col text-center">
									<button type="submit" class="btn btn-primary"
										name="confirm_button" value="regist">更新</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row usertable">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th class="center"></th>
									<th class="center">購入日時</th>
									<th class="center">配送方法</th>
									<th class="center">購入金額</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="uib" items="${uibList}">
								<tr>
									<td class="center"><a
										href="UserBuyHistoryDetail?buy_id=${uib.id}"
										class="btn btn-primary"> <i
											class="fas fa-chevron-circle-down"></i></a></td>
									<th class="center">${uib.formatDate}</th>
									<th class="center">${uib.delivertMethodName}</th>
									<th class="center">${uib.totalPrice}円</th>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>