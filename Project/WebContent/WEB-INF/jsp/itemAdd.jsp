<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>カート追加</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="itemAdd.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<div class="col center_text">
				${cartActionMessage}
				<h5 class="col">買い物かご</h5>
			</div>
		</div>
		<div class="section">
			<form action="ItemDelete" method="post">
				<div class="row aaa">
					<div class="col center-block mx-auto center_text">
						<button type="submit" class="btn btn-primary " name="action">
							削除<i class="fas fa-trash-alt"></i>
						</button>
					</div>
					<div class="col center-block mx-auto center_text">
						<a href="Buy" class="btn btn-primary col-md-offset-2">レジに進む<i
							class="fas fa-dollar-sign"></i></a>
					</div>
				</div>
				<div class="row">
					<c:forEach var="items" items="${cart}" varStatus="status">
						<div class="col_3">
							<div class="card">
								<div class="card-image">
									<a href="Item?item_id=${items.id}"><img
										src="image/${items.fileName}"> </a>
								</div>
								<div class="card-content">
									<span class="card-title">${items.fileName}</span>
									<p>個数 ${items.countNum}</p>
									<p>${items.stPrice}円</p>
									<p>
										<input type="checkbox" id="${items.id}"
											name="delete_item_id_list" value="${items.id}" /> <label
											for="${items.id}">削除</label>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
					<%--<c:if test="${(status.index+1) % 4 == 0 }">--%>
				</div>
				<div class="row">
					<%--</c:if>
					</c:forEach>--%>

				</div>
			</form>
		</div>
	</div>
</body>
</html>