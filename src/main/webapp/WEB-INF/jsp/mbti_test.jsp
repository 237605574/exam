<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>哲哲科技</title>
    <link rel="stylesheet" href="/css/amazeui.css"/>
    <link rel="stylesheet" href="/css/common.min.css"/>
    <link rel="stylesheet" href="/css/index.min.css"/>
</head>
<body>
<div class="layout">
    <jsp:include page="layout_header.jsp"></jsp:include>


    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="index-page">
            <iframe src='http://www.apesk.com/mbti/dati.asp' width='100%' height='100%' frameborder='0' name="_blank" id="_blank"></iframe>
        </div>
    </div>


</div>

<!--===========layout-footer================-->
<jsp:include page="layout_footer.jsp"></jsp:include>
<script src="/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="/js/amazeui.js" charset="utf-8"></script>
<script src="/js/common.js" charset="utf-8"></script>
<jsp:include page="checkLogin.jsp"></jsp:include>
</body>

</html>
