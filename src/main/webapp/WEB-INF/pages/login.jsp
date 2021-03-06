<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>用户登录</title>
    <link rel="stylesheet" href="../../resource/common/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../resource/css/login.css"/>
    <script src="../../resource/common/js/jquery-3.2.1.min.js"></script>
    <script src="../../resource/common/js/bootstrap.min.js"></script>
</head>
<body>
<form id="loginform" name="loginform" action="../login/login" method="post">
    <div class="mycenter">
        <div class="mysign">
            <div class="col-lg-11 text-center text-info">
                <h2>请登录</h2>
            </div>
            <div class="col-lg-10">
                <input type="text" class="form-control" name="username" placeholder="请输入账户名" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="password" class="form-control" name="password" placeholder="请输入密码" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10 mycheckbox checkbox">
                <input type="checkbox" class="col-lg-1">记住密码</input>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <button type="button" class="btn btn-success col-lg-12 btn_submit">登录</button>
            </div>
        </div>
    </div>
</form>
<script src="../../resource/js/login.js"></script>
</body>
</html>