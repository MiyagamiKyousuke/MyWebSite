<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>管理者TOP</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="header.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="adminHeader.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h5 class=" col text-center text-warning">ユーザー一覧</h5>
		</div>
		<div class="section">
			<!--   おすすめ商品   -->
			<div class="row">
				<table class="table mx-auto">
					<tr>
						<th scope="col">ユーザーID</th>
						<th scope="col">ユーザー名</th>
						<th scope="col">ログインID</th>
						<th scope="col"></th>
					</tr>
					<c:forEach var="user" items="${userList}">
						<tr>
							<th scope="col">${user.id}</th>
							<th scope="col">${user.name}</th>
							<th scope="col">${user.loginId}</th>
							<th scope="col"><a class="btn-primary"
								href="UserDelete?id=${user.id}">削除</a></th>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>