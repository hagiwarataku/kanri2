<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<tiles:insertTemplate template="/WEB-INF/views/common/layout.jsp" flush="true">
<tiles:putAttribute name="title"  value="Tiles" />
<tiles:putAttribute name="content" type="string">

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

      <h4><b>検索条件</b></h4>
      <form:form class="form-signin" action="doLogin" commandName="workTimeListForm" method="post" >
      <div class="row">
        <div class="col-xs-9 col-sm-2">
          <form:input path="employeeId"  class="form-control" placeholder="社員ID" />
        </div>
        <div class="col-xs-9 col-sm-2">
          <form:input path="employeeName" class="form-control" placeholder="社員名" />
        </div>
        <div class="col-xs-9 col-sm-3">
          <form:input path="dateFrom" class="form-control" placeholder="年月(FROM)(YYYYMM)" />
        </div>
        <div class="col-xs-9 col-sm-3">
          <form:input path="dateTo" class="form-control" placeholder="年月(TO)(YYYYMM)" />
        </div>
</div>
      <div class="row" style="padding:10px 0">
		    <div class="col-xs-9 col-sm-2">
              <button type="submit" name="doLogin"  class="btn btn-sm btn-primary btn-block">検索</button>
            </div>
          </div>
          </form:form>
<hr>
          <h4><b>統計情報</b></h4>
          <div class="row">
            <div class="col-xs-3">
              稼働時間総計：2000
            </div>
            <div class="col-xs-3">
              稼働時間平均：180
            </div>
            <div class="col-xs-3">
              残業時間総計：100
            </div>
            <div class="col-xs-3">
              残業時間平均：100
            </div>
		  </div>
<hr>

          <h4><b>一覧</b></h4>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>社員ID</th>
                  <th>社員名</th>
                  <th>年月</th>
                  <th>稼働時間</th>
                  <th>残業時間</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000002</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000003</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000004</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
                <tr>
                  <td>000000001</td>
                  <td>山田 太郎</td>
                  <td>2014年1月</td>
                  <td>180時間</td>
                  <td>20時間</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

</tiles:putAttribute>
</tiles:insertTemplate>

