<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 25/4/2020
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="uupdataservlet" method="post">
    <table border="1" class="t1">
        <tr>
            <td colspan="2"><h1>修改用户信息</h1></td>
        </tr>
        <tr>
            <td>请输入需要更改用户的序号:</td>
            <td><input  type="text" name="id"/></td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input  type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input  type="text" name="password"/></td>
        </tr>
        <tr>
            <td>身份:</td>
            <td><input  type="text" name="actor"/></td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td><input  type="text" name="email"/></td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input  type="text" name="name"/></td>
        </tr>
        <tr>
            <td>手机号:</td>
            <td><input  type="text" name="telephone"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input  type="submit" value="提交"/>
                <input  type="reset" value="清空"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
