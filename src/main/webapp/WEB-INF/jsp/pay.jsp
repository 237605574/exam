<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>哲哲科技</title>
    <link rel="stylesheet" href="/css/pay.css"/>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
<div class="">
    <!-- 模态框（Modal） -->
    <div class="modal fade modal-fullscreen" id="alert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                </div>
                <div class="modal-body">
                    充值成功！
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <div class="cp-container">
        <div id="order" class="cp-panel">
            <div id="order_info">
                <div class="cp-body prop">
                    <div class="account">
                        <div class="account-area">
                            <span class="account-title">开通帐号</span>
                        </div>
                    </div>
                    <div class="goods">
                        <div class="goods-items">
                            <div class="total">
                                <em class="money">10</em>
                                <span class="unit">元</span>
                            </div>
                            <div class="relative-to-total">
                                <div>一个月</div>
                            </div>
                            <i class="icon-corner-checked"></i>
                        </div>
                        <div class="goods-items">
                            <div class="total">
                                <em class="money">30</em>
                                <span class="unit">元</span>
                            </div>
                            <div class="relative-to-total">
                                <div>三个月</div>
                            </div>
                            <i class="icon-corner-checked"></i>
                        </div>
                        <div class="goods-items">
                            <div class="total">
                                <em class="money">60</em>
                                <span class="unit">元</span>
                            </div>
                            <div class="relative-to-total">
                                <div>六个月</div>
                            </div>
                            <i class="icon-corner-checked"></i>
                        </div>
                        <div class="goods-items">
                            <div class="total">
                                <em class="money">120</em>
                                <span class="unit">元</span>
                            </div>
                            <div class="relative-to-total">
                                <div>十二个月</div>
                            </div>
                            <i class="icon-corner-checked"></i>
                        </div>
                    </div>
                </div>

            </div>
            <div class="cp-body">
                <div class="pay-area">
                    <div class="pay-area-header">
                        <h3 class="pay-title">支付方式：</h3>
                        <div class="channels">
                            <div class="channel">
                                <span>微信支付</span>
                                <i class="icon-corner-checked"></i>
                            </div>
                            <div class="channel">
                                <span>支付宝支付</span>
                                <i class="icon-corner-checked"></i>
                            </div>
                            <div class="channel">
                                <span>QQ钱包支付</span>
                                <i class="icon-corner-checked"></i>
                            </div>
                        </div>
                    </div>
                    <div class="pay-area-body">
                        <div class="channel-detail">
                            <button id="btn-pay">充值</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/amazeui.js" charset="utf-8"></script>
<script src="/js/alert.js"></script>
<script src="/js/bootstrap.min.js" charset="utf-8"></script>
<script src="/js/pay.js" charset="utf-8"></script>
<script>
    $("#btn-pay").click(function () {
        $.ajax({
            type: "POST",
            url: "<%=request.getContextPath()%>/userAction/getUserInfo",
            dataType: 'json',
            data: {},
            cache: false,
            success: function (result) {
                // 注册成功
                if (result.code === 0) {
                    doPay(result.data);
                } else {
                    alert(result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }
        })
    });

    function doPay(userData) {
        var payInfo = {
            userName: userData.name,
            channelId: channelId,
            money:money,
            payDays:money*3
        };
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/userAction/pay',
            data: payInfo,
            dataType: 'json',
            cache: false,
            success: function (result) {
                if (result.code === 0) {
                    // alert("成功充值" + money/10 + "个月会员！");
                    $("#alert").modal('show')
                    $('#alert').on('hide.bs.modal', function () {
                        window.parent.location.reload();
                    })
                } else {
                    alert(result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }
        })
    }
</script>
</body>

</html>
