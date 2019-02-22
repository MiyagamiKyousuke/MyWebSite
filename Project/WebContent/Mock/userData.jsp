<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="form-group col-10">
								<label>名前</label> <input type="text" class="form-control"
									name="user_name" value="aaa">
							</div>
						</div>
						<div class="row">
							<div class="form-group col-10">
								<label>ログインID</label> <input type="text" class="form-control"
									name="login_id" value="ABCD">
							</div>
						</div>
						<div class="row">
							<div class="form-group col-10">
								<label>住所</label> <input type="text" class="form-control"
									name="user_address" value="千葉県">
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
								<tr>
									<td class="center"><a
										href="UserBuyHistoryDetail?buy_id=${uib.id}"
										class="btn btn-primary"> <i
											class="fas fa-chevron-circle-down"></i></a></td>
									<th class="center">2019年02月21日10時25分</th>
									<th class="center">特急配送</th>
									<th class="center">39164円</th>
								</tr>
							</tbody>

						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>