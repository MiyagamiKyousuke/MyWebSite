<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>購入確認</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="header.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="buyConfirm.css">
</head>
<body>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h5 class=" col light">カートアイテム</h5>
		</div>
		<div class="row center">
			<div class="col">

				<table class="table">
					<thead>
						<tr>
							<th class="center" style="width: 20%">商品名</th>
							<th class="center">単価</th>
							<th class="center" style="width: 20%">小計</th>
						</tr>
					</thead>
					<tbody>
						<%-- <c:forEach var="cartInItem" items="${cart}">--%>
						<tr>
							<td class="center">灰流うらら</td>
							<td class="center">1000円</td>
							<td class="center">1000円</td>
						</tr>
						<tr>

							<td class="center">配送</td>
							<td class="center"></td>
							<td class="center">300円</td>
						</tr>
						<tr>
							<td class="center"></td>
							<td class="center">合計</td>
							<td class="center">1300円</td>
						</tr>
						<%-- </c:forEach> --%>

					</tbody>
				</table>

				<button type="button" class="btn btn-primary " name="action">購入</button>

			</div>
		</div>

	</div>
</body>
</html>