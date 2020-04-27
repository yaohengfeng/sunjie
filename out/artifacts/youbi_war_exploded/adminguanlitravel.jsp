<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 26/4/2020
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border: 1px solid pink;
            margin: 0 auto;
        }

        td{
            width: 150px;
            border: 1px solid pink;
            text-align: center;
        }
    </style>
</head>
<body>
<div>
    <table>
        <tr>
            <td>序号</td>
            <td>活动名</td>
            <td>活动地点</td>
            <td>图片</td>
            <td>时间</td>
            <td>价格</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.hdname}</td>
                <td>${item.hddidian}</td>
                <td>${item.hdimg}</td>
                <td>${item.hdtime}</td>
                <td>${item.hdprice}</td>
                <td><a href="#?id=${item.id}">删除</a>|<a href="#?id=${item.id}">修改</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6" style="text-align: left;"><a href="adminadduser.jsp">添加活动</a></td>
        </tr>
    </table>
</div>
</body>
</html>
