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
    <link rel="stylesheet" href="/css/home.css"/>
    <link href="/css/global.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="layout_header.jsp"></jsp:include>
<div class="Homebanner">
    <ul>
        <li class="Load cur" style="z-index:99">
            <img src="/images/home/banner1.jpg" alt="">
            <div class="Homebannertext">
                <img src="/images/home/banner2016.png" class="bannereffect bannertime bigimg">
            </div>
        </li>
        <li class="Load">
            <img src="/images/home/banner2.jpg" alt="">
            <div class="Homebannertext">
                <img src="/images/home/02.png" class="bannereffect bannertime bigimg">
            </div>
        </li>
        <li class="Load"><img src="/images/home/banner3.jpg" alt="">
            <div class="Homebannertext">
            </div>
        </li>
    </ul>
    <div class="Homeleft"><</div>
    <div class="Homeright">></div>
    <div class="Homedot"><a href="javascript:;" class="cur">1</a><a href="javascript:;">2</a><a
            href="javascript:;">3</a></div>
</div>
<div class="login-block" id="login-block">
    <div class="demo form-bg">
        <div class="container">
            <div class="col-md-offset-3 col-md-6">
                <form class="form-horizontal">
                    <img class="logo-pic" src="/images/logo2_03.png" alt=""/>
                    <div class="form-group">
                        <input class="form-control" type="text" id="user_name" minlength="3" placeholder="输入用户名"
                               required/>
                        <i class="am-icon-user"></i>
                    </div>
                    <div class="form-group help">
                        <input class="form-control" type="password" id="password" placeholder="输入密码" required/>
                        <i class="am-icon-key"></i>
                    </div>
                    <div class="form-group">
                        <a href="<%=request.getContextPath()%>/gaokao/register" style="text-decoration: underline">
                            没有账号？点我注册</a>
                        <button type="button" onclick="loginSubmit()" class="btn btn-default">立刻登录</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="section--header">
            <h2 class="section--title">哲哲教育网</h2>
            <p class="section--description">
                中学生生涯规划、学习提升和志愿填报一站式升学服务综合平台
            </p>
        </div>

        <!--index-container start-->
        <div class="index-container">
            <div class="am-g">
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f011.jpg" alt="">
                        <h3 class="features_item--title">志愿智能模拟</h3>
                        <p class="features_item--text">
                            多种填报模式，99.9%成功率
                        </p>
                    </div>
                </div>
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f012.jpg" alt="">
                        <h3 class="features_item--title">历年数据查询</h3>
                        <p class="features_item--text">
                            5年官方权威数据
                        </p>
                    </div>
                </div>
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f013.jpg" alt="">
                        <h3 class="features_item--title">大学信息</h3>
                        <p class="features_item--text">
                            全国2856所院校
                        </p>
                    </div>
                </div>
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f014.jpg" alt="">
                        <h3 class="features_item--title">了解专业</h3>
                        <p class="features_item--text">
                            详解1200多专业
                        </p>
                    </div>
                </div>
            </div>
            <div class="am-g">
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f015.jpg" alt="">
                        <h3 class="features_item--title">未来职业</h3>
                        <p class="features_item--text">
                            涵盖870个职业
                        </p>
                    </div>
                </div>
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f016.jpg" alt="">
                        <h3 class="features_item--title">学习资料</h3>
                        <p class="features_item--text">
                            20万份学习资料
                        </p>
                    </div>
                </div>
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f017.jpg" alt="">
                        <h3 class="features_item--title">知识讲解</h3>
                        <p class="features_item--text">
                            9科2345个视频
                        </p>
                    </div>
                </div>
                <div class="am-u-md-3">
                    <div class="features_item">
                        <img src="/images/index/f018.jpg" alt="">
                        <h3 class="features_item--title">自我评估测试</h3>
                        <p class="features_item--text">
                            5大国际标准测评
                        </p>
                    </div>
                </div>
            </div>
            <!--index-container end-->
        </div>
    </div>
</div>
<jsp:include page="msg_alert.jsp"></jsp:include>
<!--===========layout-footer================-->
<jsp:include page="layout_footer.jsp"></jsp:include>
<jsp:include page="checkUserInfo.jsp"></jsp:include>
</body>
<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/amazeui.js" charset="utf-8"></script>
<script src="/js/jquery.tips.js" charset="utf-8"></script>
<script src="/js/alert.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/banner.js"></script>
<script>
    $.ajax({
        type: "POST",
        url: '<%=request.getContextPath()%>/userAction/getUserInfo',
        dataType: 'json',
        data: {},
        cache: false,
        success: function (result) {
            // 注册成功
            if (result.code === 0) {
                $("#login-block").css("display","none");
            } else {

            }
        },
    });

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

    $(document).ready(function () {

        $(".index_btn li").hover(function () {
            $(this).find("div").stop(true).animate({top: -280}, 300);
        }, function () {
            $(this).find("div").stop(true).animate({top: -0}, 300);
        });

    });

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
