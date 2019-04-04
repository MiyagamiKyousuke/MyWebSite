<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>購入</title>
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
<link rel="stylesheet" href="buy.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h5 class=" col light">カートアイテム</h5>
		</div>
		<form action="BuyConfirm" method="post">
			<div class="row center">
				<div class="col">

					<table class="table table-bordered">
						<thead>
							<tr>
								<th class="center" style="width: 20%">商品名</th>
								<th class="center" style="width: 20%">購入数</th>
								<th class="center">単価</th>
								<th class="center" style="width: 20%">小計</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cartInItem" items="${cart}">
								<tr>
									<td class="center">${cartInItem.itemName}</td>
									<td class="center">${cartInItem.countNum}</td>
									<td class="center">${cartInItem.stPrice}円</td>
									<td class="center">${cartInItem.stSubTotal}円</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<div class="">
						<button type="submit" class="btn btn-primary " name="action">購入確認</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	</div>
</body>
</html>