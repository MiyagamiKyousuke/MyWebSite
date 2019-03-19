<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>システムエラー</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">


		<div class="card">
			<div class="card-body">
				<div class="center text-center">

					<h4 class="text-danger">システムエラーが発生しました</h4>
					<h5 class="text-danger">${errorMessage}</h5>
				</div>
			</div>
		</div>

	</div>
</body>
</html>