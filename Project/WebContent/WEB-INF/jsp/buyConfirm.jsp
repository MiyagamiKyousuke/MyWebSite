<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<form action="BuyResult" method="post">
					<table class="table">
						<thead>
							<tr>
								<th class="center" style="width: 20%">商品名</th>
								<th class="center" style="width: 20%">単価</th>
								<th class="center" style="width: 20%">個数</th>
								<th class="center" style="width: 20%">小計</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cartInItem" items="${cart}">
								<tr>
									<td class="center">${cartInItem.itemName}</td>
									<td class="center">${cartInItem.price}円</td>
									<td class="center">${cartInItem.countNum}</td>
									<td class="center">${cartInItem.subTotal}円</td>
								</tr>
							</c:forEach>
							<tr>

								<td class="center">${deliveryPrice.name}</td>
								<td class="center"></td>
								<td class="center"></td>
								<td class="center">${deliveryPrice.price}円</td>
							</tr>
							<tr>
								<td class="center">合計</td>
								<td class="center"></td>
								<td class="center"></td>
								<td class="center">${bdb.totalPrice}円</td>
							</tr>
						</tbody>
					</table>
				<button type="submit" class="btn btn-primary " name="action">購入</button>
				</form>
			</div>
		</div>

	</div>
</body>
</html>