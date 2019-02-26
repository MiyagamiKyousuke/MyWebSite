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
			<div class="row center">
				<div class="col"></div>
				<div class="col">
					<h5 class=" col light">商品詳細</h5>
				</div>
				<div class="col">
					<form action="ItemAdd" method="POST">
						<input type="hidden" name="item_id" value="${item.id}">
						<button type="button" class="btn btn-primary ">
							買い物かごに追加 <i class="fas fa-cart-plus"></i>
						</button>
					</form>
				</div>
			</div>
			<br> <br>
			<div class="row">
				<div class="col">
					<div class="card-image">
						<img src="image/51P7MQPmqLL.jpg">
					</div>
				</div>
				<div class="col">
					<div class="ca">
						<h4>灰流うらら</h4>
					</div>
					<h5>1000円</h5>
					<p>チューナー・効果モンスター（準制限カード） 星３/炎属性/アンデット族/攻 0/守1800
						このカード名の効果は１ターンに１度しか使用できない。 (1)：以下のいずれかの効果を含む魔法・罠・モンスターの効果が発動した時、
						このカードを手札から捨てて発動できる。 その効果を無効にする。 ●デッキからカードを手札に加える効果
						●デッキからモンスターを特殊召喚する効果 ●デッキからカードを墓地へ送る効果</p>
				</div>
			</div>
		</div>

	</div>
</body>
</html>