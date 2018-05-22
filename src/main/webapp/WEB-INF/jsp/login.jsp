<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>哲哲科技</title>
    <link rel="stylesheet" href="/css/amazeui.css"/>
    <link rel="stylesheet" href="/css/other.min.css"/>
</head>
<body class="login-container">
<div class="login-box">
    <div class="logo-img">
        <img src="/images/logo2_03.png" alt=""/>
    </div>
    <form class="am-form" data-am-validator>
        <div class="am-form-group">
            <label for="user_name"><i class="am-icon-user"></i></label>
            <input type="text" id="user_name" minlength="3" placeholder="输入用户名" required/>
        </div>

        <div class="am-form-group">
            <label for="password"><i class="am-icon-key"></i></label>
            <input type="password" id="password" placeholder="输入密码" required/>
        </div>
        <button class="am-btn am-btn-secondary" type="button" onclick="loginSubmit()">登录</button>
    </form>
    <div class="am-form-group" style="text-align: center">
        <a href="<%=request.getContextPath()%>/gaokao/register" style="text-decoration: underline"> 没有账号？点我注册</a>
    </div>
</div>
<jsp:include page="msg_alert.jsp"></jsp:include>
</body>
<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/amazeui.js" charset="utf-8"></script>
<script src="/js/jquery.tips.js" charset="utf-8"></script>
<script src="/js/alert.js" charset="utf-8"></script>
<script>
    function loginSubmit() {
        if (!checkLogin()) {
            return;
        }
        //  发送请求
        var userName = $("#user_name").val();
        var password = $("#password").val();
        var userData = {
            name: userName,
            password: password,
        };
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/userAction/login',
            data: userData,
            dataType: 'json',
            cache: false,
            success: function (result) {
                if (result.code === 0) {
                    window.location.href = "<%=request.getContextPath()%>/gaokao/recommend";
                } else {
                    alertMsg("", result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }
        })
    }

    function checkLogin() {
        var userName = $("#user_name");
        var password = $("#password");
        if (userName.val() == null || userName.val().length > 10 || userName.val().length <= 0) {
            userName.tips({
                side: 2,
                msg: '请输入10位以下的用户名',
                bg: '#14ccff',
                time: 3
            });
            return false;
        } else if (password.val() == null || password.val().length < 6 || password.val().length > 15) {
            password.tips({
                side: 2,
                msg: '请输入6-15位的密码',
                bg: '#14ccff',
                time: 3
            });
            return false;
        }

        return true;
    }
</script>
</html>
