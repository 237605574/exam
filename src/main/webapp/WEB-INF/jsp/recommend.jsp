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
                                <strong class="promo_slider_nav--item_title">根据学校推荐</strong>
                                <p class="promo_slider_nav--item_description">学校优先的志愿推荐</p>
                            </div>
                        </a>
                    </li>
                    <li class="a">
                        <a href="[data-tab-panel-1] am-g">
                            <div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
                                <i class="am-icon-line-chart"></i>
                            </div>
                            <div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
                                <strong class="promo_slider_nav--item_title">根据专业推荐</strong>
                                <p class="promo_slider_nav--item_description">专业优先的志愿推荐</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <%--推荐输入界面开始--%>
                <div class="am-tabs-bd " style="background-color:#f0f0f0">
                    <%--学校预测--%>
                    <div data-tab-panel-0 class="am-tab-panel am-active">
                        <div class="am-u-md-9 am-u-sm-centered am-panel am-panel-default">
                            <div class="am-cf">
                                <form class="am-form tpl-form-line-form">
                                    <div class="am-u-md-4 am-u-sm-centered">
                                        <div class="am-form-group">
                                            <div class=" recommend_type_container"
                                                 id="school_recommend_type">
                                                <div class="am-u-center">
                                                    <button type="button" class="am-btn am-btn-primary am-fl"
                                                            id="school_rank_btn" onclick="schoolRankSelect()">根据排名推荐
                                                    </button>
                                                    <button type="button" class="am-btn am-btn-default am-fr"
                                                            id="school_score_btn" onclick="schoolScoreSelect()">根据分数推荐
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label class="am-u-sm-3 am-form-label" id="school_text">高考排名 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" placeholder="输入高考排名"
                                                       style="min-width:200px;width:50%" id="school_gaokao">
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="school_studentType" class="am-u-sm-3 am-form-label">
                                                文理科
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="school_studentType" data-am-selected
                                                        style="display: none;">
                                                    <option value="1">理科</option>
                                                    <option value="0">文科</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="school_studentProvince" class="am-u-sm-3 am-form-label">
                                                考生省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="school_studentProvince" data-am-selected="{searchBox: 1}"
                                                        style="display: none;height:250px; overflow-y: scroll">
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
                                            <label for="school_risk" class="am-u-sm-3 am-form-label"> 风险范围 </label>
                                            <div class="am-u-sm-9">
                                                <select id="school_risk" data-am-selected style="display: none;">
                                                    <option value="0">全部</option>
                                                    <option value="1">风险高</option>
                                                    <option value="2">风险中</option>
                                                    <option value="3">风险低</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="school_schoolProvince" class="am-u-sm-3 am-form-label">
                                                学校省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="school_schoolProvince" data-am-selected="{searchBox: 1}"
                                                        style="display: none;height:250px; overflow-y: scroll">
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
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <button type="button"
                                                        class="am-btn am-btn-primary tpl-btn-bg-color-success "
                                                        style="max-width:200px;width:80%" onclick="schoolQueryClick()">
                                                    进行学校推荐
                                                </button>
                                            </div>
                                        </div>
                                        <div class="am-form-group mobile-tips" style="display:none">
                                            <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-centered"
                                                 style="font-size:1rem;text-decoration:underline">
                                                *向右滑动进行专业推荐>>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="am-u-md-9 am-u-sm-centered am-u-md-9 am-u-sm-centered am-panel am-panel-default">
                            <div class="widget-head am-cf">
                                <h4 class="header-title m-t-0 m-b-30">学校推荐结果</h4>
                                <div class="am-scrollable-horizontal">
                                    <table class="am-table    am-table-hover am-scrollable-horizontal">
                                        <thead style="text-align: center">

                                        <tr>
                                            <th colspan="3" rowspan="2">学校/专业</th>
                                            <th colspan="6" class="score_rank_th">近年分数</th>
                                            <th rowspan="2" colspan="2">风险</th>
                                        </tr>
                                        <tr>
                                            <th>年份</th>
                                            <th>平均</th>
                                            <th class="mobile_not_show">年份</th>
                                            <th class="mobile_not_show">平均</th>
                                            <th class="mobile_not_show">年份</th>
                                            <th class="mobile_not_show">平均</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody id="school_query_body">
                                        </tbody>
                                    </table>
                                </div>
                                <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-right"
                                     style="font-size:1rem;text-decoration:underline;text-align: end">
                                </div>
                                <div class="am-scrollable-horizontal" style="margin: 0 auto;">
                                    <ul data-am-widget="pagination" class="am-pagination am-pagination-default"
                                        style="margin: 0 0 0 auto;width: 350px">
                                        <li class="am-pagination-prev ">
                                            <a href="javascript:void(0);" onclick="schoolPrePage()" class="">上一页</a>
                                        </li>
                                        <input id="school_page" value="0"
                                               style="width: 5rem; border:none;text-decoration: underline;min-width: 5rem;"/>
                                        <li class="am-pagination-next ">
                                            <a href="javascript:void(0);" onclick="schoolNextPage()" class="">下一页</a>
                                        </li>
                                        <li class="am-pagination-last ">
                                            <a href="javascript:void(0);" onclick="schoolQueryByNum()" class="">跳转</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--专业预测--%>
                    <div data-tab-panel-1 class="am-tab-panel ">
                        <div class="am-u-md-9 am-u-sm-centered am-panel am-panel-default">
                            <div class="am-cf">
                                <form class="am-form tpl-form-line-form">
                                    <div class="am-u-md-4 am-u-sm-centered">
                                        <div class="am-form-group">
                                            <div class=" recommend_type_container"
                                                 id="major_recommend_type">
                                                <div class="am-u-center">
                                                    <button type="button" class="am-btn am-btn-primary am-fl"
                                                            id="major_rank_btn" onclick="majorRankSelect()">根据排名推荐
                                                    </button>
                                                    <button type="button" class="am-btn am-btn-default am-fr"
                                                            id="major_score_btn" onclick="majorScoreSelect()">根据分数推荐
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label class="am-u-sm-3 am-form-label" for="major_keyWord">专业关键词 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" placeholder="输入专业关键词"
                                                       style="min-width:200px;width:50%" id="major_keyWord">
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label class="am-u-sm-3 am-form-label" id="major_text">高考排名 </label>
                                            <div class="am-u-sm-9">
                                                <input type="text" placeholder="输入高考排名"
                                                       style="min-width:200px;width:50%" id="major_gaokao">
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="major_studentType" class="am-u-sm-3 am-form-label">
                                                文理科
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="major_studentType" data-am-selected
                                                        style="display: none;">
                                                    <option value="1">理科</option>
                                                    <option value="0">文科</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="major_studentProvince" class="am-u-sm-3 am-form-label">
                                                考生省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="major_studentProvince" data-am-selected="{searchBox: 1}"
                                                        style="display: none;height:250px; overflow-y: scroll">
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
                                            <label for="major_risk" class="am-u-sm-3 am-form-label"> 风险范围 </label>
                                            <div class="am-u-sm-9">
                                                <select id="major_risk" data-am-selected style="display: none;">
                                                    <option value="0">全部</option>
                                                    <option value="1">风险高</option>
                                                    <option value="2">风险中</option>
                                                    <option value="3">风险低</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="major_majorProvince" class="am-u-sm-3 am-form-label">
                                                学校省份
                                            </label>
                                            <div class="am-u-sm-9">
                                                <select id="major_majorProvince" data-am-selected="{searchBox: 1}"
                                                        style="display: none;height:250px; overflow-y: scroll">
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
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <button type="button"
                                                        class="am-btn am-btn-primary tpl-btn-bg-color-success "
                                                        style="max-width:200px;width:80%" onclick="majorQueryClick()">
                                                    进行专业推荐
                                                </button>
                                            </div>
                                        </div>
                                        <div class="am-form-group mobile-tips" style="display:none">
                                            <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-centered"
                                                 style="font-size:1rem;text-decoration:underline">
                                                *向左滑动进行学校推荐>>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="am-u-md-9 am-u-sm-centered am-u-md-9 am-u-sm-centered am-panel am-panel-default">
                            <div class="widget-head am-cf">
                                <h4 class="header-title m-t-0 m-b-30">专业推荐结果</h4>
                                <div class="am-scrollable-horizontal">
                                    <table class="am-table    am-table-hover am-scrollable-horizontal">
                                        <thead style="text-align: center">

                                        <tr>
                                            <th colspan="3" rowspan="2">学校/专业</th>
                                            <th colspan="6" class="score_rank_th">近年分数</th>
                                            <th rowspan="2" colspan="2">风险</th>
                                        </tr>
                                        <tr>
                                            <th>年份</th>
                                            <th>平均</th>
                                            <th class="mobile_not_show">年份</th>
                                            <th class="mobile_not_show">平均</th>
                                            <th class="mobile_not_show">年份</th>
                                            <th class="mobile_not_show">平均</th>
                                            <th></th>
                                        </tr>
                                        </thead>
                                        <tbody id="major_query_body">
                                        </tbody>
                                    </table>
                                </div>
                                <div class="am-u-sm-9 am-u-sm-push-3  am-u-sm-right"
                                     style="font-size:1rem;text-decoration:underline;text-align: end">
                                </div>
                                <div class="am-scrollable-horizontal" style="margin: 0 auto;">
                                    <ul data-am-widget="pagination" class="am-pagination am-pagination-default"
                                        style="margin: 0 0 0 auto;width: 350px">
                                        <li class="am-pagination-prev ">
                                            <a href="javascript:void(0);" onclick="majorPrePage()" class="">上一页</a>
                                        </li>
                                        <input id="major_page" value="0"
                                               style="width: 5rem; border:none;text-decoration: underline;min-width: 5rem;"/>
                                        <li class="am-pagination-next ">
                                            <a href="javascript:void(0);" onclick="majorNextPage()" class="">下一页</a>
                                        </li>
                                        <li class="am-pagination-last ">
                                            <a href="javascript:void(0);" onclick="majorQueryByNum()" class="">跳转</a>
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
<jsp:include page="checkLogin.jsp"></jsp:include>
<script>
    //  判断是否查询过，用于页面跳转
    var hasSchoolQuery = false;
    var hasMajorQuery = false;
    //  是否查询到结尾了
    var isSchoolPageEnd = true;
    var isMajorPageEnd = true;
    //  用户是否登录
    var rankQuery = 0;
    var scoreQuery = 1;

    var schoolLimit = 5;
    var majorLimit = 5;
    var isMobile = false;
    var school_studentProvince;
    var school_studentType;
    var schoolGaokao;
    var school_risk;
    var school_offset;
    var school_schoolProvince;

    var school_queryType = rankQuery;
    var major_queryType = rankQuery;


    var major_keyWord;
    var major_province;
    var major_gaokao;
    var major_risk;
    var major_studentType;
    var major_offset;
    var major_schoolProvince;

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
        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            isMobile = true;
            var nodes = $(".mobile_not_show");
            nodes.css("display", "none");
            $(".score_rank_th").attr("colspan", "2");
            $(".mobile-tips").css("display", "block");
            $(".recommend_type_container").removeClass("am-u-sm-9");
            $(".recommend_type_container").removeClass("am-u-sm-push-2");
        }
    }

    browserRedirect();

    function sendSchoolQuery() {
        var recommendData;
        var url;
        if (school_queryType == rankQuery) {
            recommendData = {
                province: school_studentProvince,
                studentType: school_studentType,
                rank: schoolGaokao,
                riskLevel: school_risk,
                offset: school_offset,
                schoolProvince: school_schoolProvince,
            };
            url = '<%=request.getContextPath()%>/recommendAction/schoolRankRecommend';
        } else {
            recommendData = {
                province: school_studentProvince,
                studentType: school_studentType,
                score: schoolGaokao,
                riskLevel: school_risk,
                offset: school_offset,
                schoolProvince: school_schoolProvince,
            };
            url = '<%=request.getContextPath()%>/recommendAction/schoolScoreRecommend'
        }
        hasSchoolQuery = true;
        $.ajax({
            type: "POST",
            url: url,
            data: recommendData,
            dataType: 'json',
            cache: false,
            success: function (result) {
                // 查询正确
                if (result.code === 0) {
                    showSchoolData(result.data);
                } else {
                    alertErrorMsg(result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }

        });
    }

    function schoolQueryClick() {
        if (!checkSchoolQuery()) {
            return;
        }
        //  重置页码
        $("#school_page").val(1);
        schoolGaokao = $("#school_gaokao").val();
        school_studentType = $("#school_studentType").val();
        school_studentProvince = $("#school_studentProvince").val();
        school_risk = $("#school_risk").val();
        school_schoolProvince = $("#school_schoolProvince").val();
        school_offset = 0;
        // 发送请求
        sendSchoolQuery();
    }

    function transformScore(score, node) {
        if (score == -1) {
            return "--";
            if (node.maxScore != -1) {
                return node.maxScore;
            } else if (node.minScore != -1) {
                return node.minScore;
            } else if (node.avgScore != -1) {
                return node.avgScore;
            }
        }
        return score;
    }

    function showSchoolData(recommendDatas) {
        // var tableParentNode = $("#rank_query_body");
        // 删除所有子节点
        var tableParentNode = $("#school_query_body")
        tableParentNode.children().remove();
        //  动态插入数据
        var schoolNum = recommendDatas.length;
        for (var i = 0; i < recommendDatas.length; i++) {
            var recommendData = recommendDatas[i];
            //  插入学校
            var trSchoolNode = $("<tr class='am-primary'></tr>");
            var trPanelStr = "{parent: '#table1', target: '.tr" + i + "'}"
            trSchoolNode.attr("data-am-collapse", trPanelStr);
            var schoolData = recommendData.school;
            var schoolInfoStr = schoolData.name + "  " + schoolData.schoolPici + "  " + schoolData.schoolAddress;
            var schoolInfo = $("<td colspan = '3' style='text-align: start'></td>");
            schoolInfo.html(schoolInfoStr);
            trSchoolNode.append(schoolInfo);
            //  历年平均分
            var schoolScores = new Array();
            for (var ii = 0; ii < 3; ii++) {
                var tmpTds = new Array();
                for (var iii = 0; iii < 2; iii++) {
                    var tmpTd = $("<td></td>");
                    tmpTd.html("--");
                    tmpTds.push(tmpTd);
                }
                schoolScores.push(tmpTds);
            }
            var scoreRankList = schoolData.scoreRankList;
            for (var j = 0; j < scoreRankList.length; j++) {
                //  只显示近三年
                if (j >= 3) {
                    break;
                }
                schoolScores[j][0].html(scoreRankList[j].year);
                schoolScores[j][1].html(transformScore(scoreRankList[j].avgScore, scoreRankList[j]));
            }
            for (var j = 0; j < 3; j++) {
                if (isMobile) {
                    if (j >= 1) {
                        break;
                    }
                }
                for (var jj = 0; jj < 2; jj++) {
                    trSchoolNode.append(schoolScores[j][jj]);
                }
            }
            tdRisk = $("<td></td>");
            if (schoolData.riskLevel == 1) {
                tdRisk.html("风险高");
                tdRisk.css("color", "#d30606");
            } else if (schoolData.riskLevel == 2) {
                tdRisk.html("风险中");
                tdRisk.css("color", "#cda00b");
            } else if (schoolData.riskLevel == 3) {
                tdRisk.html("风险低");
                tdRisk.css("color", "#03e206");
            }
            trSchoolNode.append(tdRisk);
            tableParentNode.append(trSchoolNode);
            //  插入专业信息
            var majorList = recommendData.majorList;
            for (var iii = 0; iii < majorList.length; iii++) {
                var majorData = majorList[iii];
                var tdName = $("<td colspan='2' style='text-align: start'></td>");
                var trMajorNode = $("<tr class='am-panel-collapse am-collapse tr" + i + "'></tr>");
                trMajorNode.append($("<td></td>"));
                tdName.html(majorData.name);
                trMajorNode.append(tdName);


                //  历年平均分
                var majorScores = new Array();
                for (var ii = 0; ii < 3; ii++) {
                    var tmpTds = new Array();
                    for (var iiii = 0; iiii < 2; iiii++) {
                        var tmpTd = $("<td></td>");
                        tmpTd.html("--");
                        tmpTds.push(tmpTd);
                    }
                    majorScores.push(tmpTds);
                }
                var scoreRankList = majorData.scoreRankList;
                for (var j = 0; j < scoreRankList.length; j++) {
                    //  只显示近三年
                    if (j >= 3) {
                        break;
                    }
                    majorScores[j][0].html(scoreRankList[j].year);
                    majorScores[j][1].html(transformScore(scoreRankList[j].avgScore, scoreRankList[j]));
                }
                for (var j = 0; j < 3; j++) {
                    if (isMobile) {
                        if (j >= 1) {
                            break;
                        }
                    }
                    for (var jj = 0; jj < 2; jj++) {
                        trMajorNode.append(majorScores[j][jj]);
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
        if (schoolNum < schoolLimit) {
            isSchoolPageEnd = true;
        } else {
            isSchoolPageEnd = false;
        }
        if (isMobile) {
            $("td").css("font-size", "1rem");
        }
    }

    function showMajorData(recommendDatas) {
        // var tableParentNode = $("#rank_query_body");
        // 删除所有子节点
        var tableParentNode = $("#major_query_body");
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
            //  历年平均分
            var schoolScores = new Array();
            for (var ii = 0; ii < 3; ii++) {
                var tmpTds = new Array();
                for (var iii = 0; iii < 2; iii++) {
                    var tmpTd = $("<td></td>");
                    tmpTd.html("--");
                    tmpTds.push(tmpTd);
                }
                schoolScores.push(tmpTds);
            }
            var scoreRankList = schoolData.scoreRankList;
            for (var j = 0; j < scoreRankList.length; j++) {
                //  只显示近三年
                if (j >= 3) {
                    break;
                }
                schoolScores[j][0].html(scoreRankList[j].year);
                schoolScores[j][1].html(transformScore(scoreRankList[j].avgScore, scoreRankList[j]));
            }
            for (var j = 0; j < 3; j++) {
                if (isMobile) {
                    if (j >= 1) {
                        break;
                    }
                }
                for (var jj = 0; jj < 2; jj++) {
                    trSchoolNode.append(schoolScores[j][jj]);
                }
            }


            tdRisk = $("<td></td>");
            if (schoolData.riskLevel == 1) {
                tdRisk.html("风险高");
                tdRisk.css("color", "#d30606");
            } else if (schoolData.riskLevel == 2) {
                tdRisk.html("风险中");
                tdRisk.css("color", "#cda00b");
            } else if (schoolData.riskLevel == 3) {
                tdRisk.html("风险低");
                tdRisk.css("color", "#03e206");
            }
            trSchoolNode.append(tdRisk);
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


                //  历年平均分
                var majorScores = new Array();
                for (var ii = 0; ii < 3; ii++) {
                    var tmpTds = new Array();
                    for (var iiii = 0; iiii < 2; iiii++) {
                        var tmpTd = $("<td></td>");
                        tmpTd.html("--");
                        tmpTds.push(tmpTd);
                    }
                    majorScores.push(tmpTds);
                }
                var scoreRankList = majorData.scoreRankList;
                for (var j = 0; j < scoreRankList.length; j++) {
                    //  只显示近三年
                    if (j >= 3) {
                        break;
                    }
                    majorScores[j][0].html(scoreRankList[j].year);
                    majorScores[j][1].html(transformScore(scoreRankList[j].avgScore, scoreRankList[j]));
                }
                for (var j = 0; j < 3; j++) {
                    if (isMobile) {
                        if (j >= 1) {
                            break;
                        }
                    }
                    for (var jj = 0; jj < 2; jj++) {
                        trMajorNode.append(majorScores[j][jj]);
                    }
                }



                // // 历年最高分最低分
                // var majorScores = new Array();
                // for (var ii = 0; ii < 4; ii++) {
                //     var tmpTd = $("<td></td>");
                //     tmpTd.html("--");
                //     majorScores.push(tmpTd);
                // }
                // var majorScoreList = majorData.scoreRankList;
                // lastYear = -1;
                // for (var jj = 0; jj < majorScoreList.length; jj++) {
                //     if (majorScoreList[jj].year > lastYear) {
                //         lastYear = majorScoreList[jj].year;
                //         majorScores[0].html(majorScoreList[jj].year);
                //         majorScores[1].html(transformScore(majorScoreList[jj].maxScore, majorScoreList[jj]));
                //         majorScores[2].html(transformScore(majorScoreList[jj].minScore, majorScoreList[jj]));
                //         majorScores[3].html(transformScore(majorScoreList[jj].avgScore, majorScoreList[jj]));
                //     }
                // }
                // for (var j = 0; j < 4; j++) {
                //     if (isMobile) {
                //         if (j < 3 && j > 0) {
                //             continue;
                //         }
                //     }
                //     trMajorNode.append(majorScores[j]);
                // }
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
        if (majorNum < majorLimit) {
            isMajorPageEnd = true;
        } else {
            isMajorPageEnd = false;
        }
        if (isMobile) {
            $("td").css("font-size", "1rem");
        }
    }

    function checkSchoolQuery() {
        if ($("#school_gaokao").val() == null || $("#school_gaokao").val() == "") {
            $("#school_gaokao").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#school_studentType").val() == null || $("#school_studentType").val() == "") {
            $("#school_studentType").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#school_studentProvince").val() == null || $("#school_studentProvince").val() == "") {
            $("#school_studentProvince").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#school_risk").val() == null || $("#school_risk").val() == "") {
            $("#school_risk").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        return true;
    }

    function schoolNextPage() {
        if (!isLogin) {
            alertMsgLink("", "登录后使用完整功能", "<%=request.getContextPath()%>/gaokao/login");
            return;
        }
        if (isSchoolPageEnd) {
            alertMsg("", "没有更多数据了")
            return;
        }
        var page = $("#school_page").val();
        if (!hasSchoolQuery) {
            return;
        }
        $("#school_page").val(++page);
        school_offset += schoolLimit;
        var tableParentNode = $("#school_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendSchoolQuery();
    }

    function schoolPrePage() {
        if (!isLogin) {
            alertMsgLink("", "登录后使用完整功能", "<%=request.getContextPath()%>/gaokao/login");
            return;
        }
        var curPage = $("#school_page").val();
        if (curPage <= 1) {
            return;
        }
        var page = $("#school_page").val();
        if (page <= 1) {
            return
        }
        $("#school_page").val(--page);
        school_offset -= schoolLimit;
        var tableParentNode = $("#school_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendSchoolQuery();
    }

    function schoolQueryByNum() {
        if (!isLogin) {
            alertMsgLink("", "登录后使用完整功能", "<%=request.getContextPath()%>/gaokao/login");
            return;
        }
        if (!hasSchoolQuery) {
            return;
        }
        var curPage = $("#school_page").val();
        if (curPage <= 0) {
            alertMsg("", "页码不正确");
            return;
        }
        curPage--;
        school_offset = schoolLimit * curPage;
        var tableParentNode = $("#school_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendSchoolQuery();
    }

    function majorQueryClick() {
        if (!checkMajor()) {
            return;
        }
        //  重置页码
        $("#major_page").val(1);
        major_gaokao = $("#major_gaokao").val();
        major_keyWord = $("#major_keyWord").val();
        major_studentType = $("#major_studentType").val();
        major_province = $("#major_studentProvince").val();
        major_risk = $("#major_risk").val();
        major_schoolProvince = $("#major_schoolProvince").val();
        major_offset = 0;
        // 发送请求
        sendMajorQuery();
    }

    function checkMajor() {
        if ($("#major_keyWord").val() == null || $("#major_keyWord").val() == "") {
            $("#major_keyWord").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#major_gaokao").val() == null || $("#major_gaokao").val() == "") {
            $("#major_gaokao").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#major_studentType").val() == null || $("#major_studentType").val() == "") {
            $("#major_studentType").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#major_studentProvince").val() == null || $("#major_studentProvince").val() == "") {
            $("#major_studentProvince").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        if ($("#major_risk").val() == null || $("#major_risk").val() == "") {
            $("#major_risk").tips({
                side: 2,
                msg: '值不能为空',
                bg: '#ff293f',
                time: 3
            });
            return false;
        }
        return true;
    }

    function sendMajorQuery() {
        var recommendData;
        var url;
        if (major_queryType == rankQuery) {
            recommendData = {
                province: major_province,
                studentType: major_studentType,
                rank: major_gaokao,
                keyWord: major_keyWord,
                riskLevel: major_risk,
                offset: major_offset,
                schoolProvince: major_schoolProvince,
            };
            url = '<%=request.getContextPath()%>/recommendAction/rankRecommend';
        } else {
            recommendData = {
                province: major_province,
                studentType: major_studentType,
                score: major_gaokao,
                keyWord: major_keyWord,
                riskLevel: major_risk,
                offset: major_offset,
                schoolProvince: major_schoolProvince,
            };
            url = '<%=request.getContextPath()%>/recommendAction/scoreRecommend';
        }
        hasMajorQuery = true;
        $.ajax({
            type: "POST",
            url: url,
            data: recommendData,
            dataType: 'json',
            cache: false,
            success: function (result) {
                // 查询正确
                if (result.code === 0) {
                    showMajorData(result.data);
                } else {
                    alertErrorMsg(result.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
            }

        });
    }

    function majorNextPage() {
        if (!isLogin) {
            alertMsgLink("", "登录后使用完整功能", "<%=request.getContextPath()%>/gaokao/login");
            return;
        }
        if (isMajorPageEnd) {
            alertMsg("", "没有更多数据了")
            return;
        }
        var page = $("#major_page").val();
        if (!hasMajorQuery) {
            return;
        }
        $("#major_page").val(++page);
        major_offset += majorLimit;
        var tableParentNode = $("#major_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendMajorQuery();
    }

    function majorPrePage() {
        if (!isLogin) {
            alertMsgLink("", "登录后使用完整功能", "<%=request.getContextPath()%>/gaokao/login");
            return;
        }
        var curPage = $("#major_page").val();
        if (curPage <= 1) {
            return;
        }
        var page = $("#major_page").val();
        if (page <= 1) {
            return
        }
        $("#major_page").val(--page);
        major_offset -= majorLimit;
        var tableParentNode = $("#major_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendMajorQuery();
    }

    function majorQueryByNum() {
        if (!isLogin) {
            alertMsgLink("", "登录后使用完整功能", "<%=request.getContextPath()%>/gaokao/login");
            return;
        }
        if (!hasMajorQuery) {
            return;
        }
        var curPage = $("#major_page").val();
        if (curPage <= 0) {
            alertMsg("", "页码不正确");
            return;
        }
        curPage--;
        major_offset = schoolLimit * curPage;
        var tableParentNode = $("#major_query_body");
        // 删除所有子节点
        tableParentNode.children().remove();
        sendMajorQuery();
    }

    function schoolRankSelect() {
        $("#school_score_btn").removeClass("am-btn-primary");
        $("#school_score_btn").addClass("am-btn-default");
        $("#school_rank_btn").addClass("am-btn-primary");
        $("#school_rank_btn").removeClass("am-btn-default");
        $("#school_text").html("高考排名");
        $("#school_gaokao").attr("placeholder", "输入高考排名");
        school_queryType = rankQuery;
    }

    function schoolScoreSelect() {
        $("#school_rank_btn").removeClass("am-btn-primary");
        $("#school_rank_btn").addClass("am-btn-default");
        $("#school_score_btn").addClass("am-btn-primary");
        $("#school_score_btn").removeClass("am-btn-default");
        $("#school_text").html("高考分数");
        $("#school_gaokao").attr("placeholder", "输入高考分数");
        school_queryType = scoreQuery;
    }

    function majorRankSelect() {
        $("#major_score_btn").removeClass("am-btn-primary");
        $("#major_score_btn").addClass("am-btn-default");
        $("#major_rank_btn").addClass("am-btn-primary");
        $("#major_rank_btn").removeClass("am-btn-default");
        $("#major_text").html("高考排名");
        $("#major_gaokao").attr("placeholder", "输入高考排名");
        major_queryType = rankQuery;
    }

    function majorScoreSelect() {
        $("#major_rank_btn").removeClass("am-btn-primary");
        $("#major_rank_btn").addClass("am-btn-default");
        $("#major_score_btn").addClass("am-btn-primary");
        $("#major_score_btn").removeClass("am-btn-default");
        $("#major_text").html("高考分数");
        $("#major_gaokao").attr("placeholder", "输入高考分数");
        major_queryType = scoreQuery;
    }
</script>
</body>

</html>
