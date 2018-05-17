<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<script>
    //  获取登录信息
    $.ajax({
        type: "POST",
        url: '<%=request.getContextPath()%>/userAction/getUserInfo',
        dataType: 'json',
        data: {},
        cache: false,
        success: function (result) {
            // 注册成功
            if (result.code === 0) {
                changeUserUI(result.data);
            } else {

            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            ajaxErrorAlert(XMLHttpRequest, textStatus, errorThrown);
        }
    });

    function changeUserUI(userData) {
        //  电脑端
        var userNameNode = $("#user_pos1");
        var userActionNode = $("#user_pos2");
        userNameNode.html(userData.name);
        userNameNode.attr("href", "#");
        userActionNode.html("注销");
        userActionNode.attr("href", "<%=request.getContextPath()%>/userAction/logout");
        // 手机端
        userNameNode = $("#m_user_pos1");
        userActionNode = $("#m_user_pos2");
        userNameNode.html(userData.name);
        userNameNode.attr("href", "#");
        userActionNode.html("注销");
        userActionNode.attr("href", "<%=request.getContextPath()%>/userAction/logout");

    }
</script>