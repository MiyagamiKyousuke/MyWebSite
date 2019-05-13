<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>在庫追加</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="CSS/adminStockInsert.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<script type="text/javascript">
	function changeStock(item) {
		var selectItemId = item.id;
		var selectItemStock = item.value;
		document.getElementById("h_itemId").value(selectItemId);
		document.getElementById("h_itemStock").value(selectItemStock);
		// submit実行
	}
</script>
<body>
	<div class="container">
		<table class="table">
			<tr>
				<th scope="col">商品名</th>
				<th scope="col">カード種別 <!--  <div class="dropdown">
						<select name="cardType" class="btn">
							<option value="0">すべて</option>
							<option value="1">モンスター</option>
							<option value="2">魔法</option>
							<option value="3">トラップ</option>
						</select>
					</div>-->
				</th>
				<th scope="col">在庫数</th>
			</tr>
			<c:forEach var="item" items="${itemList}">
				<tr>
					<th scope="col">${item.itemName}</th>
					<th scope="col">${item.itemName}</th>
					<th scope="col"><div class="input-group-prepend">
							<input type="text" id="1" name="1" value="1"
								onchange="changeStock(this)">
						</div></th>
				</tr>

			</c:forEach>

		</table>
		<form action="該当サーブレット" method="post">
			<input type="hidden" name="h_itemId" id="h_itemId"> <input
				type="hidden" name="h_itemStock" id="h_itemStock">
		</form>
	</div>
</body>
</html>