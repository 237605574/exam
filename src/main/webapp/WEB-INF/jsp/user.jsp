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
    <link rel="stylesheet" href="/css/common.min.css"/>
    <link rel="stylesheet" href="/css/other.min.css"/>
</head>
<body class="register-container">
<div class="layout">
    <jsp:include page="layout_header.jsp"></jsp:include>


    <!--===========layout-container================-->
    <div class="register-box">
        <form class="am-form" data-am-validator>
            <fieldset>
                <legend>注册用户<p class="register-info"></p></legend>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="user_name_input" class="register-name">账号</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="text" id="user_name_input" minlength="3"
                                   placeholder="输入用户名" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="psw_input1" class="register-pwd">密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" id="psw_input1" placeholder="输入6位以上的密码"/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="psw_input2">确认密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" id="psw_input2" placeholder="请与上面输入的值一致"
                                   data-equal-to="#doc-vld-pwd-1" required/>
                        </div>
                    </div>
                </div>

                <div class="am-g">
                    <div class="am-u-md-10">
                        <button class="am-btn am-btn-secondary" type="button" onclick="registerSubmit()">注册</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
    <jsp:include page="msg_alert.jsp"></jsp:include>
</div>

<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/amazeui.js" charset="utf-8"></script>
<script src="/js/jquery.tips.js" charset="utf-8"></script>
<script src="/js/alert.js" charset="utf-8"></script>
</body>
<script>
    function registerSubmit() {
        if (!checkParam()) {
            return;
        }
        //  发送请求
        var userName = $("#user_name_input").val();
        var password = $("#psw_input1").val();
        var userData = {
            name: userName,
            password: password,
        };
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/userAction/register',
            data: userData,
            dataType: 'json',
            cache: false,
            success: function (result) {
                // 注册成功
                if (result.code === 0) {
                    registSuccess();
                } else {
                    alertMsg("", result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }
        })

    }

    function checkParam() {
        var userName = $("#user_name_input");
        var password = $("#psw_input1");
        var password2 = $("#psw_input2");
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
        } else if (password.val() != password2.val()) {
            password2.tips({
                side: 2,
                msg: '用户名和密码不一致',
                bg: '#14ccff',
                time: 3
            });
            return false;
        }
        return true;
    }

    function registSuccess() {
        $("#msg-body").text("注册成功");
        $("#msg-head").text("点击确认跳转");
        $("#msg-alert").modal({
            relatedTarget: this,
            onConfirm: function () {
                window.location.href = "<%=request.getContextPath()%>/gaokao/recommend";
            }
        });
    }


</script>

</html>
