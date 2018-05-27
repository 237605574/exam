<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<link rel="stylesheet" href="/css/fs-modal.min.css" type="text/css" />
<link rel="stylesheet" href="/css/amazeui.css"/>
<link rel="stylesheet" href="/css/common.min.css"/>
<link rel="stylesheet" href="/css/index.min.css"/>
<link rel="stylesheet" href="/css/app.css">
<%--充值框--%>
<div class="modal fade modal-fullscreen" id="pay" style="position: absolute;margin: auto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 700px">
        <div class="modal-content">
            <iframe id="pay-iframe" scrolling="no" style="zoom: 1;width: 690px; height: 480px; border: none; z-index: 4500;"  src="<%=request.getContextPath()%>/gaokao/pay" src="" frameBorder="0" ></iframe>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="layout-header am-hide-sm-only">

    <!--topbar start-->
    <div data-am-sticky style="z-index: 1011">
        <div class="topbar">
            <div class="container">
                <div class="am-g">
                    <div class="am-u-md-3">
                        <div class="topbar-left">
                            <div style="margin-top:5px">
                                <i class="am-icon-weixin am-icon-sm"></i>
                                <div class="am-dropdown" data-am-dropdown="">
                                    <button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle=""
                                            style="margin-top:-2px">
                                        关注我们
                                        <span class="am-icon-caret-down"></span>
                                    </button>
                                    <ul class="am-dropdown-content">
                                        <li>
                                            <img src="/images/二维码.jpg" >
                                        </li>
                                        <li class="am-divider"></li>
                                        <li>
                                            <a href="#">扫码二维码关注公众号</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-md-9">
                        <div class="topbar-right am-text-right am-fr">
                            <a  id="user_pos1" href="<%=request.getContextPath()%>/gaokao/login">登录</a>
                            <a id="user_pos2"  href="<%=request.getContextPath()%>/gaokao/register">注册</a>
                            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#pay">充值</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--topbar end-->

    <!--header start-->
    <div>
        <div class="container">
            <div class="header">
                <div class="am-g">
                    <div class="am-u-lg-2 am-u-sm-12">
                        <div class="logo">
                            <a href=""><img src="/images/logo.png" alt=""/></a>
                        </div>
                    </div>
                    <div class="am-u-md-10">
                        <div class="header-right am-fr">
                            <div class="header-contact">
                                <div class="header_contacts--item">
                                    <div class="contact_mini">
                                        <i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
                                        <strong>xxx-xxxxxxxx</strong>
                                        <span>周一~周五, 8:00 - 20:00</span>
                                    </div>
                                </div>
                                <div class="header_contacts--item">
                                    <div class="contact_mini">
                                        <i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
                                        <strong>xxxxxxxx@xxxx.com</strong>
                                        <span>随时欢迎您的来信！</span>
                                    </div>
                                </div>
                                <div class="header_contacts--item">
                                    <div class="contact_mini">
                                        <i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
                                        <strong>xxx市,</strong>
                                        <span>xxx大厦xxx</span>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="contact-btn">
                                <button type="button" class="am-btn am-btn-secondary am-radius">联系我们</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header end-->


    <!--nav start-->
    <div class="header-box" data-am-sticky="{top:40}">
        <div class="nav-contain">
            <div class="nav-inner">
                <ul class="am-nav am-nav-pills am-nav-justify" style="line-height:0.5">
                    <li class=""><a href="#">公司介绍</a></li>
                    <li>
                        <a href="#">高考服务</a>
                        <!-- sub-menu start-->
                        <ul class="sub-menu" style="line-height:1.6">
                            <li class="menu-item"><a href="<%=request.getContextPath()%>/gaokao/recommend">专业推荐</a></li>
                            <li class="menu-item"><a href="<%=request.getContextPath()%>/gaokao/mbti_test">性格测试</a></li>
                        </ul>
                        <!-- sub-menu end-->
                    </li>
                    <li>
                        <a href="#">公考服务</a>
                    </li>
                    <li class=""><a href="#">文化传媒</a></li>
                    <li class=""><a href="#">联系我们</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--nav end-->
</div>

<!--mobile header start-->
<div class="m-header">
    <div class="am-g am-show-sm-only">
        <div class="am-u-sm-2">
            <div class="menu-bars">
                <a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i
                        class="am-menu-toggle-icon am-icon-bars"></i></a>
                <!-- 侧边栏内容 -->
                <nav data-am-widget="menu" class="am-menu  am-menu-offcanvas1" data-am-menu-offcanvas>
                    <a href="javascript: void(0)" class="am-menu-toggle"></a>

                    <div class="am-offcanvas">
                        <div class="am-offcanvas-bar">
                            <ul class="am-menu-nav am-avg-sm-1">
                                <li><a href="#" class="">公司介绍</a></li>
                                <li class="am-parent">
                                    <a href="#" class="">高考服务</a>
                                    <ul class="am-menu-sub am-collapse ">
                                        <li class="">
                                            <a href="<%=request.getContextPath()%>/gaokao/recommend" class="">专业推荐</a>
                                        </li>
                                        <li class="">
                                            <a href="<%=request.getContextPath()%>/gaokao/mbti_test" class="">性格测试</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class=""><a href="#" class="">公考服务</a></li>
                                <li class=""><a href="#" class="">文化传媒</a></li>
                                <li class=""><a href="#" class="">联系我们</a></li>
                                <li class="am-parent">
                                    <a href="" class="nav-icon nav-icon-weixin">关注我们</a>
                                    <ul class="am-menu-sub am-collapse  ">
                                        <li>
                                            <img src="/images/二维码.jpg">
                                        </li>
                                        <li class="">
                                            <a href="#">扫描二维码关注公众号</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class=""><a id ="m_user_pos1" href="<%=request.getContextPath()%>/gaokao/login" class="">登录</a></li>
                                <li class=""><a id ="m_user_pos2" href="<%=request.getContextPath()%>/gaokao/register" class="">注册</a></li>
                                <li class=""><button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#pay">充值</button></li>
                            </ul>

                        </div>
                    </div>
                </nav>

            </div>
        </div>
        <div class="am-u-sm-5 am-u-end">
            <div class="m-logo">
                <a href=""><img src="/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <!--mobile header end-->
</div>
<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/bootstrap.min.js" charset="utf-8"></script>
<script src="/js/fs-modal.min.js"></script>