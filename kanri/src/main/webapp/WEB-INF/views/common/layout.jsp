<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <link href="/kanri/resources/css/bootstrap.min.css" rel="stylesheet"  type="text/css" />
  <link href="/kanri/resources/css/common.css" rel="stylesheet"  type="text/css" />
  <script type="text/javascript" src="/kanri/resources/js/jquery.min.js"></script>
  <script type="text/javascript" src="/kanri/resources/js/bootstrap.min.js"></script>
  <title><tiles:getAsString name="title" /></title>
</head>
<body>

    <%-- ヘッダー --%>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />

    <div class="container-fluid">
      <div class="row">
        <%-- サイドメニュー --%>
        <jsp:include page="/WEB-INF/views/common/sidemenu.jsp" />

        <%-- MAIN画面 --%>
        <tiles:getAsString name="content" />
      </div>
    </div>
</body>
</html>

