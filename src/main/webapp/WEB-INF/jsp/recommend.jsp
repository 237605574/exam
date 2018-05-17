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
    <link rel="stylesheet" href="/css/index.min.css"/>
    <link rel="stylesheet" href="/css/app.css">
    <style>
        th, td, .am-table > thead > tr > th {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="layout">
    <jsp:include page="layout_header.jsp"></jsp:include>


    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="index-page">
            <div data-am-widget="tabs" class="am-tabs am-tabs-default">
                <ul class="am-tabs-nav am-cf index-tab">
                    <li class="am-active">
                        <a href="[data-tab-panel-0] am-g">
                            <div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
                                <i class="am-icon-sort-amount-asc"></i>
                            </div>
                            <div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
                                <strong class="promo_slider_nav--item_title">根据排名预测</strong>
                                <p class="promo_slider_nav--item_description">输入你的高考排名</p>
                            </div>
                        </a>
                    </li>
                    <li class="a">
                        <a href="[data-tab-panel-1] am-g">
                            <div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
                                <i class="am-icon-line-chart"></i>
                            </div>
                            <div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
                                <strong class="promo_slider_nav--item_title">根据分数预测</strong>
                                <p class="promo_slider_nav--item_description">输入你的高考分数</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <%--专业输入界面开始--%>
                <div class="am-tabs-bd">
                    <%--输入排名预测--%>
                    <div data-tab-panel-0 class="am-tab-panel am-active">
                        <div class="index-banner">
                            <div class="widget am-cf">
                                <form class="am-form tpl-form-line-form">
                                    <div class="am-u-md-9 am-u-sm-centered">
                                        <div class="am-form-group">
                                            <label class="am-u-sm-3 am-form-label">高考排名 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" placeholder="输入高考排名"
                                                       style="min-width:200px;width:50%" id="rank">
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="rank_studentType" class="am-u-sm-3 am-form-label">
                                                文理科
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="rank_studentType" data-am-selected
                                                        style="display: none;">
                                                    <option value="0">理科</option>
                                                    <option value="1">文科</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="rank_province" class="am-u-sm-3 am-form-label">
                                                省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="rank_province" data-am-selected="{searchBox: 1}"
                                                        style="display: none;">
                                                    <option value="安徽">安徽</option>
                                                    <option value="北京">北京</option>
                                                    <option value="重庆">重庆</option>
                                                    <option value="福建">福建</option>
                                                    <option value="广东">广东</option>
                                                    <option value="广西">广西</option>
                                                    <option value="甘肃">甘肃</option>
                                                    <option value="贵州">贵州</option>
                                                    <option value="河北">河北</option>
                                                    <option value="河南">河南</option>
                                                    <option value="湖南">湖南</option>
                                                    <option value="湖北">湖北</option>
                                                    <option value="海南">海南</option>
                                                    <option value="黑龙江">黑龙江</option>
                                                    <option value="吉林">吉林</option>
                                                    <option value="江苏">江苏</option>
                                                    <option value="江西">江西</option>
                                                    <option value="辽宁">辽宁</option>
                                                    <option value="内蒙古">内蒙古</option>
                                                    <option value="宁夏">宁夏</option>
                                                    <option value="青海">青海</option>
                                                    <option value="上海">上海</option>
                                                    <option value="四川">四川</option>
                                                    <option value="山西">山西</option>
                                                    <option value="山东">山东</option>
                                                    <option value="陕西">陕西</option>
                                                    <option value="天津">天津</option>
                                                    <option value="新疆">新疆</option>
                                                    <option value="西藏">西藏</option>
                                                    <option value="云南">云南</option>
                                                    <option value="浙江">浙江</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="rank_risk" class="am-u-sm-3 am-form-label"> 风险范围 </label>
                                            <div class="am-u-sm-9">
                                                <select id="rank_risk" data-am-selected style="display: none;">
                                                    <option value="0">全部</option>
                                                    <option value="1">风险大</option>
                                                    <option value="2">风险中</option>
                                                    <option value="3">风险小</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="rank_schoolProvince" class="am-u-sm-3 am-form-label">
                                                学校省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="rank_schoolProvince" data-am-selected="{searchBox: 1}"
                                                        style="display: none;">
                                                    <option value="全部">全部</option>
                                                    <option value="安徽">安徽</option>
                                                    <option value="北京">北京</option>
                                                    <option value="重庆">重庆</option>
                                                    <option value="福建">福建</option>
                                                    <option value="广东">广东</option>
                                                    <option value="广西">广西</option>
                                                    <option value="甘肃">甘肃</option>
                                                    <option value="贵州">贵州</option>
                                                    <option value="河北">河北</option>
                                                    <option value="河南">河南</option>
                                                    <option value="湖南">湖南</option>
                                                    <option value="湖北">湖北</option>
                                                    <option value="海南">海南</option>
                                                    <option value="黑龙江">黑龙江</option>
                                                    <option value="吉林">吉林</option>
                                                    <option value="江苏">江苏</option>
                                                    <option value="江西">江西</option>
                                                    <option value="辽宁">辽宁</option>
                                                    <option value="内蒙古">内蒙古</option>
                                                    <option value="宁夏">宁夏</option>
                                                    <option value="青海">青海</option>
                                                    <option value="上海">上海</option>
                                                    <option value="四川">四川</option>
                                                    <option value="山西">山西</option>
                                                    <option value="山东">山东</option>
                                                    <option value="陕西">陕西</option>
                                                    <option value="天津">天津</option>
                                                    <option value="新疆">新疆</option>
                                                    <option value="西藏">西藏</option>
                                                    <option value="云南">云南</option>
                                                    <option value="浙江">浙江</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="rank_keyWord" class="am-u-sm-3 am-form-label">专业关键字 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" class="tpl-form-input" id="rank_keyWord"
                                                       placeholder="请输入专业关键字" style="min-width:200px;width:50%">
                                                <small style="text-align:start">非必选输入</small>
                                            </div>
                                        </div>


                                        <div class="am-form-group">
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <button type="button"
                                                        class="am-btn am-btn-primary tpl-btn-bg-color-success "
                                                        style="max-width:200px;width:80%" onclick="rankQueryClick()">
                                                    查询推荐专业
                                                </button>
                                            </div>
                                        </div>
                                        <div class="am-form-group" id="mobile-tips-rank" style="display:none">
                                            <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-centered"
                                                 style="font-size:1rem;text-decoration:underline">
                                                *向右滑动进行分数推荐>>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="am-u-md-9 am-u-sm-centered" id="rank_result_container">
                            <div class="card-box">
                                <h4 class="header-title m-t-0 m-b-30">专业推荐结果</h4>
                                <div class="am-scrollable-horizontal">
                                    <table class="am-table am-table-bordered  am-text-nowrap am-table-hover">
                                        <thead style="text-align: center">
                                        <tr>
                                            <th colspan="3" rowspan="2">学校/专业</th>
                                            <th colspan="3">2015</th>
                                            <th colspan="3">2016</th>
                                            <th colspan="3">2017</th>
                                            <th>风险</th>
                                        </tr>
                                        <th>最高</th>
                                        <th>最低</th>
                                        <th>平均</th>
                                        <th>最高</th>
                                        <th>最低</th>
                                        <th>平均</th>
                                        <th>最高</th>
                                        <th>最低</th>
                                        <th>平均</th>
                                        <th></th>
                                        </tr>
                                        </thead>
                                        <tbody id="rank_query_body">
                                        </tbody>
                                    </table>
                                </div>
                                <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-right"
                                     style="font-size:1rem;text-decoration:underline;text-align: end">
                                    *显示方式:分数/排名
                                </div>
                                <div class="am-scrollable-horizontal" style="margin: 0 auto;">
                                    <ul data-am-widget="pagination" class="am-pagination am-pagination-default"
                                        style="margin: 0 0 0 auto;width: 350px">
                                        <li class="am-pagination-prev ">
                                            <a href="javascript:void(0);" onclick="rankPrePage()" class="">上一页</a>
                                        </li>
                                        <input id="rank_page" value="0"
                                               style="width: 20px; border:none;text-decoration: underline"/>
                                        <li class="am-pagination-next ">
                                            <a href="javascript:void(0);" onclick="rankNextPage()" class="">下一页</a>
                                        </li>
                                        <li class="am-pagination-last ">
                                            <a href="javascript:void(0);" onclick="rankQueryByNum()" class="">跳转</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--输入分数预测--%>
                    <div data-tab-panel-1 class="am-tab-panel ">
                        <div class="index-banner">
                            <div class="widget am-cf">
                                <form class="am-form tpl-form-line-form">
                                    <div class="am-u-md-9 am-u-sm-centered">
                                        <div class="am-form-group">
                                            <label class="am-u-sm-3 am-form-label">高考分数 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" placeholder="输入高考分数"
                                                       style="min-width:200px;width:50%" id="score">
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="score_studentType" class="am-u-sm-3 am-form-label">
                                                文理科
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="score_studentType" data-am-selected
                                                        style="display: none;">
                                                    <option value="0">理科</option>
                                                    <option value="1">文科</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="score_province" class="am-u-sm-3 am-form-label">
                                                省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="score_province" data-am-selected="{searchBox: 1}"
                                                        style="display: none;">
                                                    <option value="安徽">安徽</option>
                                                    <option value="北京">北京</option>
                                                    <option value="重庆">重庆</option>
                                                    <option value="福建">福建</option>
                                                    <option value="广东">广东</option>
                                                    <option value="广西">广西</option>
                                                    <option value="甘肃">甘肃</option>
                                                    <option value="贵州">贵州</option>
                                                    <option value="河北">河北</option>
                                                    <option value="河南">河南</option>
                                                    <option value="湖南">湖南</option>
                                                    <option value="湖北">湖北</option>
                                                    <option value="海南">海南</option>
                                                    <option value="黑龙江">黑龙江</option>
                                                    <option value="吉林">吉林</option>
                                                    <option value="江苏">江苏</option>
                                                    <option value="江西">江西</option>
                                                    <option value="辽宁">辽宁</option>
                                                    <option value="内蒙古">内蒙古</option>
                                                    <option value="宁夏">宁夏</option>
                                                    <option value="青海">青海</option>
                                                    <option value="上海">上海</option>
                                                    <option value="四川">四川</option>
                                                    <option value="山西">山西</option>
                                                    <option value="山东">山东</option>
                                                    <option value="陕西">陕西</option>
                                                    <option value="天津">天津</option>
                                                    <option value="新疆">新疆</option>
                                                    <option value="西藏">西藏</option>
                                                    <option value="云南">云南</option>
                                                    <option value="浙江">浙江</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="score_risk" class="am-u-sm-3 am-form-label"> 风险范围 </label>
                                            <div class="am-u-sm-9">
                                                <select id="score_risk" data-am-selected style="display: none;">
                                                    <option value="0">全部</option>
                                                    <option value="1">风险大</option>
                                                    <option value="2">风险中</option>
                                                    <option value="3">风险小</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="score_schoolProvince" class="am-u-sm-3 am-form-label">
                                                学校省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="score_schoolProvince" data-am-selected="{searchBox: 1}"
                                                        style="display: none;">
                                                    <option value="全部">全部</option>
                                                    <option value="安徽">安徽</option>
                                                    <option value="北京">北京</option>
                                                    <option value="重庆">重庆</option>
                                                    <option value="福建">福建</option>
                                                    <option value="广东">广东</option>
                                                    <option value="广西">广西</option>
                                                    <option value="甘肃">甘肃</option>
                                                    <option value="贵州">贵州</option>
                                                    <option value="河北">河北</option>
                                                    <option value="河南">河南</option>
                                                    <option value="湖南">湖南</option>
                                                    <option value="湖北">湖北</option>
                                                    <option value="海南">海南</option>
                                                    <option value="黑龙江">黑龙江</option>
                                                    <option value="吉林">吉林</option>
                                                    <option value="江苏">江苏</option>
                                                    <option value="江西">江西</option>
                                                    <option value="辽宁">辽宁</option>
                                                    <option value="内蒙古">内蒙古</option>
                                                    <option value="宁夏">宁夏</option>
                                                    <option value="青海">青海</option>
                                                    <option value="上海">上海</option>
                                                    <option value="四川">四川</option>
                                                    <option value="山西">山西</option>
                                                    <option value="山东">山东</option>
                                                    <option value="陕西">陕西</option>
                                                    <option value="天津">天津</option>
                                                    <option value="新疆">新疆</option>
                                                    <option value="西藏">西藏</option>
                                                    <option value="云南">云南</option>
                                                    <option value="浙江">浙江</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="score_keyWord" class="am-u-sm-3 am-form-label">专业关键字 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" class="tpl-form-input" id="score_keyWord"
                                                       placeholder="请输入专业关键字" style="min-width:200px;width:50%">
                                                <small style="text-align:start">非必选输入</small>
                                            </div>
                                        </div>


                                        <div class="am-form-group">
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <button type="button"
                                                        class="am-btn am-btn-primary tpl-btn-bg-color-success "
                                                        style="max-width:200px;width:80%" onclick="scoreQueryClick()">
                                                    查询推荐专业
                                                </button>
                                            </div>
                                        </div>
                                        <div class="am-form-group" id="mobile-tips-score" style="display:none">
                                            <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-centered"
                                                 style="font-size:1rem;text-decoration:underline">
                                                <<*向左滑动进行分数推荐
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="am-u-md-9 am-u-sm-centered" id="score_result_container">
                            <div class="card-box">
                                <h4 class="header-title m-t-0 m-b-30">专业推荐结果</h4>
                                <div class="am-scrollable-horizontal">
                                    <table class="am-table am-table-bordered  am-text-nowrap am-table-hover">
                                        <thead style="text-align: center">
                                        <tr>
                                            <th colspan="3" rowspan="2">学校/专业</th>
                                            <th colspan="3">2015</th>
                                            <th colspan="3">2016</th>
                                            <th colspan="3">2017</th>
                                            <th>风险</th>
                                        </tr>
                                        <th>最高</th>
                                        <th>最低</th>
                                        <th>平均</th>
                                        <th>最高</th>
                                        <th>最低</th>
                                        <th>平均</th>
                                        <th>最高</th>
                                        <th>最低</th>
                                        <th>平均</th>
                                        <th></th>
                                        </tr>
                                        </thead>
                                        <tbody id="score_query_body">
                                        </tbody>
                                    </table>
                                </div>
                                <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-right"
                                     style="font-size:1rem;text-decoration:underline;text-align: end">
                                    *显示方式:分数/排名
                                </div>
                                <div class="am-scrollable-horizontal" style="margin: 0 auto;">
                                    <ul data-am-widget="pagination" class="am-pagination am-pagination-default"
                                        style="margin: 0 0 0 auto;width: 350px">
                                        <li class="am-pagination-prev ">
                                            <a href="javascript:void(0);" onclick="scorePrePage()" class="">上一页</a>
                                        </li>
                                        <input id="score_page" value="0"
                                               style="width: 20px; border:none;text-decoration: underline"/>
                                        <li class="am-pagination-next ">
                                            <a href="javascript:void(0);" onclick="scoreNextPage()" class="">下一页</a>
                                        </li>
                                        <li class="am-pagination-last ">
                                            <a href="javascript:void(0);" onclick="scoreQueryByNum()" class="">跳转</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

    </div>
</div>


<jsp:include page="msg_alert.jsp"></jsp:include>
<!--===========layout-footer================-->
<jsp:include page="layout_footer.jsp"></jsp:include>
<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/amazeui.js" charset="utf-8"></script>
<script src="/js/common.js" charset="utf-8"></script>
<script src="/js/jquery.tips.js" charset="utf-8"></script>
<script src="/js/alert.js" charset="utf-8"></script>
<script>
    var hasRankQuery = false;
    var hasScoreQuery = false;
    //  是否查询到结尾了
    var isRankPageEnd = true;
    var isScorePageEnd = true;
    //  用户是否登录
    var isLogin = false;
    var limit = 30;
    var isMobile = false;
    var rank_keyWord;
    var rank_province;
    var rank_studentType;
    var rank;
    var rank_risk;
    var rank_offset;
    var rank_schoolProvince;
    var score_keyWord;
    var score_province;
    var score;
    var score_risk;
    var score_studentType;
    var score_offset;
    var score_schoolProvince;

    function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        document.writeln("您的浏览设备为：");
        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            isMobile = true;
            $("#mobile-tips-rank").css("display", "block");
            $("#mobile-tips-score").css("display", "block");
        }
    }

    browserRedirect();

    function sendRankQuery() {
        var recommendData = {
            province: rank_province,
            studentType: rank_studentType,
            rank: rank,
            keyWord: rank_keyWord,
            riskLevel: rank_risk,
            offset: rank_offset,
            schoolProvince:rank_schoolProvince,
        };
        hasRankQuery = true;
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/recommendAction/rankRecommend',
            data: recommendData,
            dataType: 'json',
            cache: false,
            success: function (result) {
                // 查询正确
                if (result.code === 0) {
                    var tableParentNode = $("#rank_query_body");
                    showData(tableParentNode, result.data, isRankPageEnd);
                } else {
                    alertErrorMsg(result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }

        });
    }

    function rankQueryClick() {
        if (!checkRank()) {
            return;
        }
        //  重置页码
        $("#rank_page").val(1);
        rank = $("#rank").val();
        rank_keyWord = $("#rank_keyWord").val();
        rank_studentType = $("#rank_studentType").val();
        rank_province = $("#rank_province").val();
        rank_risk = $("#rank_risk").val();
        rank_schoolProvince = $("#rank_schoolProvince").val();
        rank_offset = 0;
        // 发送请求
        sendRankQuery();
    }

    function showData(tableParentNode, recommendDatas, isPageEnd) {
        // var tableParentNode = $("#rank_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        //  动态插入数据
        var majorNum = 0;
        for (var i = 0; i < recommendDatas.length; i++) {
            var recommendData = recommendDatas[i];
            //  插入学校
            var trSchoolNode = $("<tr class='am-primary'></tr>");
            var schoolData = recommendData.school;
            var schoolInfoStr = schoolData.name + "  " + schoolData.schoolPici + "  " + schoolData.schoolAddress;
            var schoolInfo = $("<td colspan = '3' style='text-align: start'></td>");
            schoolInfo.html(schoolInfoStr);
            trSchoolNode.append(schoolInfo);
            //  历年最高分
            var schoolScores = new Array();
            for (var ii = 0; ii < 3; ii++) {
                var tmp = new Array();
                for (var j = 0; j < 3; j++) {
                    var tmpTd = $("<td></td>");
                    tmpTd.html("--/--");
                    tmp.push(tmpTd);
                }
                schoolScores.push(tmp);
            }
            var scoreRankList = schoolData.scoreRankList;
            for (var j = 0; j < scoreRankList.length; j++) {
                if (scoreRankList[j].year == 2015) {
                    schoolScores[0][0].html(scoreRankList[j].maxScore + "/" + scoreRankList[j].maxRank);
                    schoolScores[0][1].html(scoreRankList[j].minScore + "/" + scoreRankList[j].minRank);
                    schoolScores[0][2].html(scoreRankList[j].avgScore + "/" + scoreRankList[j].avgRank);
                }
                if (scoreRankList[j].year == 2016) {
                    schoolScores[1][0].html(scoreRankList[j].maxScore + "/" + scoreRankList[j].maxRank);
                    schoolScores[1][1].html(scoreRankList[j].minScore + "/" + scoreRankList[j].minRank);
                    schoolScores[1][2].html(scoreRankList[j].avgScore + "/" + scoreRankList[j].avgRank);
                }
                if (scoreRankList[j].year == 2017) {
                    schoolScores[2][0].html(scoreRankList[j].maxScore + "/" + scoreRankList[j].maxRank);
                    schoolScores[2][1].html(scoreRankList[j].minScore + "/" + scoreRankList[j].minRank);
                    schoolScores[2][2].html(scoreRankList[j].avgScore + "/" + scoreRankList[j].avgRank);
                }
            }
            for (var j = 0; j < 3; j++) {
                for (var k = 0; k < 3; k++) {
                    trSchoolNode.append(schoolScores[j][k]);
                }
            }
            trSchoolNode.append($("<td></td>"));
            tableParentNode.append(trSchoolNode);
            //  插入专业信息
            var majorList = recommendData.majorList;
            for (var iii = 0; iii < majorList.length; iii++) {
                majorNum++;
                var majorData = majorList[iii];
                var tdName = $("<td colspan='2' style='text-align: start'></td>");
                var trMajorNode = $("<tr></tr>");
                trMajorNode.append($("<td></td>"));
                tdName.html(majorData.name);
                trMajorNode.append(tdName);

                // 历年最高分最低分
                var majorScores = new Array();
                for (var j = 0; j < 3; j++) {
                    var tmp = new Array();
                    for (var k = 0; k < 3; k++) {
                        var tmpTd = $("<td></td>");
                        tmpTd.html("--/--");
                        tmp.push(tmpTd);
                    }
                    majorScores.push(tmp);
                }
                var majorScoreList = majorData.scoreRankList;
                for (var jj = 0; jj < majorScoreList.length; jj++) {
                    if (majorScoreList[jj].year == 2015) {
                        majorScores[0][0].html(majorScoreList[jj].maxScore + "/" + majorScoreList[jj].maxRank);
                        majorScores[0][1].html(majorScoreList[jj].minScore + "/" + majorScoreList[jj].minRank);
                        majorScores[0][2].html(majorScoreList[jj].avgScore + "/" + majorScoreList[jj].avgRank);
                    }
                    if (majorScoreList[jj].year == 2016) {
                        majorScores[1][0].html(majorScoreList[jj].maxScore + "/" + majorScoreList[jj].maxRank);
                        majorScores[1][1].html(majorScoreList[jj].minScore + "/" + majorScoreList[jj].minRank);
                        majorScores[1][2].html(majorScoreList[jj].avgScore + "/" + majorScoreList[jj].avgRank);
                    }
                    if (majorScoreList[jj].year == 2017) {
                        majorScores[2][0].html(majorScoreList[jj].maxScore + "/" + majorScoreList[jj].maxRank);
                        majorScores[2][1].html(majorScoreList[jj].minScore + "/" + majorScoreList[jj].minRank);
                        majorScores[2][2].html(majorScoreList[jj].avgScore + "/" + majorScoreList[jj].avgRank);
                    }
                }
                for (var j = 0; j < 3; j++) {
                    for (var k = 0; k < 3; k++) {
                        trMajorNode.append(majorScores[j][k]);
                    }
                }
                var tdRisk = $("<td></td>");
                if (majorData.riskLevel == 1) {
                    tdRisk.html("风险高");
                    tdRisk.css("color", "#d30606");
                } else if (majorData.riskLevel == 2) {
                    tdRisk.html("风险中");
                    tdRisk.css("color", "#cda00b");
                } else if (majorData.riskLevel == 3) {
                    tdRisk.html("风险低");
                    tdRisk.css("color", "#03e206");
                }

                trMajorNode.append(tdRisk);
                tableParentNode.append(trMajorNode);
            }
        }
        if (majorNum < 30) {
            isPageEnd = true;
        } else {
            isPageEnd = false;
        }
    }

    function checkRank() {
        if ($("#rank").val() == null || $("#rank").val() == "") {
            $("#rank").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#rank_studentType").val() == null || $("#rank_studentType").val() == "") {
            $("#rank_studentType").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#rank_province").val() == null || $("#rank_province").val() == "") {
            $("#rank_province").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#rank_risk").val() == null || $("#rank_risk").val() == "") {
            $("#rank_risk").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        return true;
    }

    function rankNextPage() {
        if (!isLogin) {
            alertMsg("", "登录后使用完整功能");
            return;
        }
        if (isRankPageEnd) {
            alertMsg("", "没有更多数据了")
            return;
        }
        var page = $("#rank_page").val();
        if (!hasRankQuery) {
            return;
        }
        $("#rank_page").val(++page);
        rank_offset += limit;
        var tableParentNode = $("#rank_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendRankQuery();
    }

    function rankPrePage() {
        if (!isLogin) {
            alertMsg("", "登录后使用完整功能");
            return;
        }
        var curPage = $("#rank_page").val();
        if (curPage <= 1) {
            return;
        }
        var page = $("#rank_page").val();
        if (page <= 1) {
            return
        }
        $("#rank_page").val(--page);
        rank_offset -= limit;
        var tableParentNode = $("#rank_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendRankQuery();

    }

    function rankQueryByNum() {
        if (!isLogin) {
            alertMsg("", "登录后使用完整功能");
            return;
        }
        if (!hasRankQuery) {
            return;
        }
        var curPage = $("#rank_page").val();
        if (curPage <= 0) {
            alertMsg("", "页码不正确");
            return;
        }
        curPage--;
        rank_offset = limit * curPage;
        var tableParentNode = $("#rank_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendRankQuery();
    }

    function scoreQueryClick() {
        if (!checkScore()) {
            return;
        }
        //  重置页码
        $("#score_page").val(1);
        score = $("#score").val();
        score_keyWord = $("#score_keyWord").val();
        score_studentType = $("#score_studentType").val();
        score_province = $("#score_province").val();
        score_risk = $("#score_risk").val();
        score_schoolProvince = $("#score_schoolProvince").val();
        score_offset = 0;
        // 发送请求
        sendScoreQuery();
    }

    function checkScore() {
        if ($("#score").val() == null || $("#score").val() == "") {
            $("#score").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#score_studentType").val() == null || $("#score_studentType").val() == "") {
            $("#score_studentType").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#score_province").val() == null || $("#score_province").val() == "") {
            $("#score_province").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#score_risk").val() == null || $("#score_risk").val() == "") {
            $("#score_risk").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        return true;
    }

    function sendScoreQuery() {
        var recommendData = {
            province: score_province,
            studentType: score_studentType,
            score: score,
            keyWord: score_keyWord,
            riskLevel: score_risk,
            offset: score_offset,
            schoolProvince:score_schoolProvince,
        };
        hasScoreQuery = true;
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/recommendAction/scoreRecommend',
            data: recommendData,
            dataType: 'json',
            cache: false,
            success: function (result) {
                // 查询正确
                if (result.code === 0) {
                    var tableParentNode = $("#score_query_body");
                    showData(tableParentNode, result.data, isScorePageEnd);
                } else {
                    alertErrorMsg(result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }

        });
    }

    function scoreNextPage() {
        if (!isLogin) {
            alertMsg("", "登录后使用完整功能");
            return;
        }
        if (isRankPageEnd) {
            alertMsg("", "没有更多数据了")
            return;
        }
        var page = $("#score_page").val();
        if (!hasScoreQuery) {
            return;
        }
        $("#score_page").val(++page);
        score_offset += limit;
        var tableParentNode = $("#score_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendScoreQuery();
    }

    function scorePrePage() {
        if (!isLogin) {
            alertMsg("", "登录后使用完整功能");
            return;
        }
        var curPage = $("#score_page").val();
        if (curPage <= 1) {
            return;
        }
        var page = $("#score_page").val();
        if (page <= 1) {
            return
        }
        $("#score_page").val(--page);
        score_offset -= limit;
        var tableParentNode = $("#score_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendScoreQuery();

    }

    function scoreQueryByNum() {
        if (!isLogin) {
            alertMsg("", "登录后使用完整功能");
            return;
        }
        if (!hasScoreQuery) {
            return;
        }
        var curPage = $("#score_page").val();
        if (curPage <= 0) {
            alertMsg("", "页码不正确");
            return;
        }
        curPage--;
        score_offset = limit * curPage;
        var tableParentNode = $("#score_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendScoreQuery();
    }
</script>
<jsp:include page="checkLogin.jsp"></jsp:include>
</body>

</html>
