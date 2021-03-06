<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>メイン</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="header.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/index.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
			<br> <br>
			<h1 class="header center red-text text-center text-danger">遊戯王販売ECサイト</h1>
			<div class="row center">
				<h5 class="header col text-center">激安！遊戯王専門</h5>
			</div>
			<div class="row center">
				<div class="col text-center">
					<form action="ItemSearchResult" method="post">
						<div class="input-group-prepend">
							<div class="dropdown">
								<!-- 切替ボタンの設定 -->
								<!--
								<button type="button" class="btn btn-secondary dropdown-toggle"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false" style="width: 10em;">
									<span class=""> <i class="fas fa-search">すべて</i></span>
								</button>

								<!-- ドロップメニューの設定 -->
								<select name="cardType" class="btn ">
								<option value="0">すべて</option>
								<option value="1">モンスター</option>
								<option value="2">魔法</option>
								<option value="3">トラップ</option>
								</select>
							</div>
							<input type="text" class="form-control" name="search_word">
						</div>
					</form>
				</div>
			</div>
			<br> <br>

		</div>
	</div>
	<div class="container">
		<div class="row center">
			<h5 class=" col text-center text-warning">遊戯王売上ランキング</h5>
		</div>
		<div class="section">
			<!--   おすすめ商品   -->
			<div class="row">
				<table class="table">
					<tr>
						<th scope="col">順位</th>
						<th scope="col">商品</th>
						<th scope="col">商品名</th>
						<th scope="col">値段</th>
					</tr>
					<c:forEach var="item" items="${itemList}">
						<tr>
						<th scope="col">${item.ranking}位</th>
						<th scope="col"><a href="ItemDetail?item_id=${item.id}" class="text-center"><img
								class="cardRanking" src="image/${item.fileName}"></a></th>
						<th scope="col">${item.itemName}</th>
						<th scope="col">${item.stPrice}円</th>
					</tr>

					</c:forEach>
				</table>



			</div>
		</div>
	</div>
</body>
</html>