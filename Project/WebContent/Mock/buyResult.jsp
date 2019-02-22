<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>購入完了</title>
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
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<div class="col center_text">
				<h5 class="col">購入が完了しました</h5>
			</div>
		</div>
		<div class="section">
			<div class="row aaa">
				<div class="col center-block mx-auto center_text">
					<button type="button" class="btn btn-primary " name="action">
						削除</button>
				</div>
				<div class="col center-block mx-auto center_text">
					<a href="Buy" class="btn btn-primary col-md-offset-2">ユーザー情報へ</a>
				</div>
			</div>
		</div>
		<div class="row center">
			<h5 class=" col light">購入詳細</h5>
		</div>
		<!-- 購入 -->
		<div class="row">
			<div class="section"></div>
			<div class="col">
				<div class="card">
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th class="center">購入日時</th>
									<th class="center">配送方法</th>
									<th class="center">合計金額</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="center">2019年02月20日10時23分</td>
									<td class="center">通常配送</td>
									<td class="center">1300円</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- 購入 -->
		<div class="row detailTable">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th class="center">商品名</th>
									<th class="center">単価</th>
								</tr>
							</thead>
							<tbody>
								<!--<c:forEach var="buyIDB" items="${buyIDBList}" > -->
								<tr>
									<td class="center">灰流うらら</td>
									<td class="center">1000円</td>
								</tr>
								<!--</c:forEach>-->
								<tr>
									<td class="center">通常配送</td>
									<td class="center">300円</td>
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