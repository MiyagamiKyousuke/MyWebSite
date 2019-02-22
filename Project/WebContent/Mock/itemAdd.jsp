<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				商品を追加しました
				<h5 class="col">買い物かご</h5>
			</div>
		</div>
		<div class="section">
			<form action="ItemDelete" method="POST">
				<div class="row aaa">
					<div class="col center-block mx-auto center_text">
						<button type="button" class="btn btn-primary " name="action">
							削除<i class="fas fa-trash-alt"></i>
						</button>
					</div>
					<div class="col center-block mx-auto center_text">
						<a href="Buy" class="btn btn-primary col-md-offset-2">レジに進む<i
							class="fas fa-dollar-sign"></i></a>
					</div>
				</div>
				<div class="row">
					<%-- <c:forEach var="item" items="${cart}" varStatus="status">--%>
						<div class="col_3">
							<div class="card">
								<div class="card-image">
									<a href="Item?item_id=${item.id}"><img
										src="image/51P7MQPmqLL.jpg"> </a>
								</div>
								<div class="card-content">
									<span class="card-title">灰流うらら</span>
									<p>1000円</p>
									<p>
										<input type="checkbox" id="${status.index}"
											name="delete_item_id_list" value="${item.id}" /> <label
											for="${status.index}">削除</label>
									</p>
								</div>
							</div>
						</div>
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