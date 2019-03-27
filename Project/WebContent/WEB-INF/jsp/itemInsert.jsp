<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>商品追加</title>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/solid.js"
	integrity="sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.7.2/js/fontawesome.js"
	integrity="sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq"
	crossorigin="anonymous"></script>

<!--  <link rel="stylesheet" href="buyResult.css">-->
<link rel="stylesheet" href="../CSS/regist.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/regist.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<!--<jsp:include page="adminHeader.jsp" />-->
	<br>
	<br>
	<div class="container">
		<div class="row center">
			<h5 class=" col s12 aaa">商品登録</h5>
			<c:if test="${validationMessage != null}">
				<P class="red-text">${validationMessage}</P>
			</c:if>

		</div>
		<form action="ItemInsertConfirm" method="post" enctype="multipart/form-data">
			<div class="row">

				<div class="section"></div>
				<div class="col-6 offset-md-3">

					<div class="card">
						<div class="card-body">
							<div class="form-group">

								<div class="row">
									<div class="col-10">
										<div class="mb-3">
											<label for="Product">商品名</label>
											<div class="input-group">
												<input type="text" class="form-control" id="Product"
													placeholder="名前 " name="name">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>

										</div>
										<div class="mb-3">
											<label for="num">カード種別</label> <select class="form-control"
												id="num" name="number">
												<option value="1">モンスター</option>
												<option value="2">魔法</option>
												<option value="3">トラップ</option>
											</select>

										</div>
										<div class="mb-3">
											<label for="ef">効果名</label>
											<div class="input-group">
												<input type="text" class="form-control" id="ef"
													placeholder="LoginID" name="effect">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>
										</div>
										<div class="mb-3">
											<label for="mo">値段</label>
											<div class="input-group">
												<input type="tel" class="form-control" id="mo"
													placeholder="LoginID" name="money">
												<div class="invalid-feedback" style="width: 100%;">
													Your username is required.</div>
											</div>

										</div>
										<div class="mb-3">
											<label>画像</label>
											<div class="input-group">
												<label class="input-group-btn"> <span
													class="btn btn-primary"> Choose File<input
														type="file" style="display: none" name="imgFile">
												</span>
												</label> <input type="text" class="form-control" readonly
													name="fileNmae">
											</div>
										</div>
										<!-- jsでファイルテキストフォームにファイル名を記述 -->
										<script type="text/javascript"
											src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
										<script type="text/javascript">
											$(document)
													.on(
															'change',
															':file',
															function() {
																var input = $(this), numFiles = input
																		.get(0).files ? input
																		.get(0).files.length
																		: 1, label = input
																		.val()
																		.replace(
																				/\\/g,
																				'/')
																		.replace(
																				/.*\//,
																				'');
																input
																		.parent()
																		.parent()
																		.next(
																				':text')
																		.val(
																				label);
															});
										</script>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-10 btn_push">
					<!-- <button class="btn btn-primary btn-lg btn-block" type="submit">確認</button> -->
					<input type="submit" class="btn btn-primary btn-lg btn-block" value="確認"/>

				</div>
			</div>
		</form>
	</div>
</body>
</html>