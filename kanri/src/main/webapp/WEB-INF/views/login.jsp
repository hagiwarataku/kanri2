<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <link href="/kanri/resources/css/bootstrap.min.css" rel="stylesheet"  type="text/css" />
  <link href="/kanri/resources/css/common.css" rel="stylesheet"  type="text/css" />
  <script type="text/javascript" src="/kanri/resources/js/jquery.min.js"></script>
  <script type="text/javascript" src="/kanri/resources/js/bootstrap.min.js"></script>
  <title>Login</title>
</head>

<style type="text/css">
  body {
    padding-top: 40px;
    padding-bottom: 40px;
    background-color: #DCDCDC;
  }

  .form-signin {
    max-width: 300px;
    padding: 19px 29px 29px;
    margin: 0 auto 20px;
    background-color: #fff;
    border: 1px solid #e5e5e5;
  }
  .form-signin .form-signin-heading,
  .form-signin .checkbox {
    margin-bottom: 10px;
  }
  .form-signin input[type="text"],
  .form-signin input[type="password"] {
    font-size: 16px;
    height: auto;
    margin-bottom: 15px;
    padding: 7px 9px;
  }

</style>
<body>

    <div class="navbar navbar-inverse navbar-fixed-top" >
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Kanri</a>
        </div>
      </div>
    </div>

	<div class="container"  style="padding:50px 0">
          <form:form class="form-signin" action="doLogin" commandName="loginForm" method="post"  role="form">
            <h4 class="form-signin-heading">OCAM社内管理システム</h4>
            <form:input path="userId"  class="form-control" placeholder="ユーザID" />
            <form:input path="password" class="form-control" placeholder="パスワード" />
            <button type="submit" name="doLogin"  class="btn btn-lg btn-primary btn-block">ログイン</button>
          </form:form>
    </div>
</body>
</html>

