<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-sm-3 col-md-2 sidebar">
  <ul class="nav nav-sidebar">
    <li class="active">
      <a href="#">
        <span class="glyphicon glyphicon-dashboard"></span> ダッシュボード
      </a></li>
    <li>
      <a href="/kanri/login/">
        <span class="glyphicon glyphicon-usd"></span> 予算管理
      </a>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#worktime">
        <span class="glyphicon glyphicon-time"></span> 作業時間管理 <b class="caret"></b>
      </a>
      <div id="worktime" class="collapse">
        <ul class="nav nav-sidebar_sub">
          <li>
            <a href="/kanri/workTimeList/"> 作業時間一覧</a>
          </li>
          <li>
            <a href="#"> 作業時間更新</a>
          </li>
          <li>
            <a href="/kanri/workTimeUpload/"> 作業時間一括登録</a>
          </li>
        </ul>
      </div>
    </li>
    <li>
      <a href="#">
        <span class="glyphicon glyphicon-user"></span> 要員管理
      </a>
    </li>
    <li>
      <a href="#">
        <span class="glyphicon glyphicon-cog"></span> テーブル管理
      </a>
    </li>
  </ul>
</div>

