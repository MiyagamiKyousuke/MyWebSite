<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>新規登録</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="buyResult.css">
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
			<h5 class=" col s12 light">新規登録</h5>
			<!--<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>-->

		</div>
		<div class="row">
			<div class="section"></div>
			<div class="col-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<div class="form-group">
							<form action="RegistConfirm" method="POST">
								<div class="row">
									<div class="form-group col_10 offset-md-1">
										<input type="text" class="form-control" name="user_name"
											required><label>名前</label>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>