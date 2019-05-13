<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>商品詳細</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="header.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="itemDetail.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
			<br> <br>
			<form action="ItemAdd" method="POST">
				<div class="row center">
					<div class="col"></div>
					<div class="col">
						<p>${cartActionMessage}<p/>
						<h5 class=" col light">商品詳細</h5>
					</div>
					<div class="col">

						<input type="hidden" name="item_id" value="${item.id}">
						<button type="submit" class="btn btn-primary ">
							買い物かごに追加 <i class="fas fa-cart-plus"></i>
						</button>

					</div>
				</div>
				<br> <br>
				<div class="row">
					<div class="col-5">
						<div class="card-image">
							<img src="image/${item.fileName}">
						</div>
					</div>
					<div class="col-5">
						<div class="ca">
							<h4>${item.itemName}</h4>
						</div>
						<h5>${item.stPrice}円</h5>
						<p>${item.effect}</p>
					</div>
					<!--  <div class="row">-->
					<div class="col-1">
						<p>購入数</p>
						<div class="dropdown">
							<!-- 切替ボタンの設定 -->
							<!--
								<button type="button" class="btn btn-secondary dropdown-toggle"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false" style="width: 10em;">
									<span class=""> <i class="fas fa-search">すべて</i></span>
								</button>

								<!-- ドロップメニューの設定 -->
							<select name="numAdd" class="btn ">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
							</select>
						</div>
					</div>
					<div class="col-1">
					<p>在庫数</p>
					<p>${item.stock}</p>
					</div>
				</div>
			</form>
		</div>

	</div>
</body>
</html>