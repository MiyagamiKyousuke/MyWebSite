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
<body>
	<jsp:include page="header.jsp" />

  <!-- body -->
  <div class="container">


    <!-- エラーメッセージのサンプル(エラーがある場合のみ表示) -->
    <div class="alert alert-danger" role="alert">エラーがある場合のメッセージサンプル</div>


    <form method="post" action="#" class="form-horizontal">
      <div class="form-group row">
        <label for="loginId" class="col-sm-2 col-form-label">ログインID</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="loginId">
        </div>
      </div>

      <div class="form-group row">
        <label for="password" class="col-sm-2 col-form-label">パスワード</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="password">
        </div>
      </div>

      <div class="form-group row">
        <label for="passwordConf" class="col-sm-2 col-form-label">パスワード(確認)</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="passwordConf">
        </div>
      </div>

      <div class="form-group row">
        <label for="userName" class="col-sm-2 col-form-label">ユーザ名</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="userName">
        </div>
      </div>

      <div class="form-group row">
        <label for="birthDate" class="col-sm-2 col-form-label">生年月日</label>
        <div class="col-sm-10">
          <input type="date" class="form-control" id="birthDate">
        </div>
      </div>

      <div class="submit-button-area">
        <button type="submit" value="検索" class="btn btn-primary btn-lg btn-block">登録</button>
      </div>

      <div class="col-xs-4">
        <a href="userList.html">戻る</a>
      </div>

    </form>


  </div>
</div>
</body>
</html>