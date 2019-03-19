<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/header.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>メイン</title>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="bg-yellow">
			<div class="container">
				<div class="mx-auto">
					<ul
						<%boolean isLogin = session.getAttribute("isLogin") != null ? (boolean) session.getAttribute("isLogin")
					: false;%>
						class="shoplink clearfix hidden-xs hidden-sm visible-md visible-lg text-center">
						<li><a href="Index"> <i class="fas fa-caret-right green"
								aria-hidden="true"> </i> HOME
						</a></li>
						<li><a href="ItemSearchResult"> <i
								class="fas fa-caret-right green" aria-hidden="true"> </i> 検索
						</a></li>
						<%if(isLogin){ %>
						<li><a href="UserData"> <i
								class="fas fa-caret-right green" aria-hidden="true"> </i> ユーザー情報
						</a></li>
						<%}else{ %>
						<li><a href="Regist"> <i
								class="fas fa-caret-right green" aria-hidden="true"> </i> 新規登録
						</a></li>
						<%} %>
						<li><a href="Cart"> <i class="fas fa-caret-right green"
								aria-hidden="true"> </i> カート
						</a></li>
						<%if(isLogin){ %>
						<li><a href="Logout"> <i
								class="fas fa-caret-right green" aria-hidden="true"> </i> LOGOUT
						</a></li>
						<%}else{ %>
						<li><a href="LoginUser"> <i
								class="fas fa-caret-right green" aria-hidden="true"> </i> LOGIN
						</a></li>
						<%} %>

					</ul>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>