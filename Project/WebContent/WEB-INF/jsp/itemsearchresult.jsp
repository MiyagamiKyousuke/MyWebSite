<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>商品検索</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="header.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/regist.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<br> <br>
		<div class="row center">
			<div class="input-field col s8 offset-s2 ">
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
		<div class="row">
			<div class="col text-center">
				<h5>検索結果</h5>
				<p>${itemCount}件</p>
			</div>
		</div>

		<div class="section">
			<!--   商品情報   -->
			<div class="row">

				<c:forEach var="item" items="${itemSearch}" varStatus="status">
					<div class="col-3">
						<div class="card mb-3 shadow-sm">
							<a href="ItemDetail?item_id=${item.id}"><img src="image/${item.fileName}"></a>
							<div class="card-body">
								<p class="card-text">${item.price}円</p>
								<div class="d-flex justify-content-between align-items-center">
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<%--<c:if test="${(status.index + 1) % 4 == 0}">--%>

			</div>
		</div>
	</div>
</body>
</html>