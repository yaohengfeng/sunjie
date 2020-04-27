<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 22/4/2020
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <style>
        .paddingtop{
            padding-top: 10px;
        }
        .search-input{
            float: left;
            border: 2px solid #4cae4c;
            width: 400px;
            height: 35px;
            padding-left: 5px;
            padding-top: 2px;
            margin-top: 20px;

        }
        .search-btn{
            float: left;
            border: 1px solid #4cae4c;
            width: 90px;
            height: 35px;
            background-color: #4cae4c;
            text-align: center;
            line-height: 35px;
            margin-top: 20px;
        }
        .jx{
            border-bottom: 2px solid #4cae4c;
            padding: 5px;
            margin-top: 3px;
        }
        .company{
            height: 40px;
            background-color: #4cae4c;
            text-align: center;
            line-height: 40px;
            font-size: 10px;
        }
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
<header>
    <div class="row">
        <img src="img/banner2.png" class="img-responsive" alt="失败">
    </div>
    <div class="row paddingtop">
        <div class="col-md-3">
            <img src="img/logo1.png"class="img-responsive" alt="失败">
        </div>
        <div class="col-md-5">
            <input class="search-input" placeholder="请输入信息">
            <a class="search-btn" href="#">搜索</a>
        </div>
        <div class="col-md-4"></div>
    </div>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">叮勾</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">叮勾叮勾 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">网站首页</a></li>
                    <li><a href="#">用户信息管理</a></li>
                    <li><a href="#">活动信息管理</a></li>
                    <li><a href="#">关于我们</a></li>
                </ul>
                <!--<form class="navbar-form navbar-left">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                  </div>
                  <button type="submit" class="btn btn-default">Submit</button>
                </form>-->
                <ul class="nav navbar-nav navbar-right">
                    <li>欢迎您，管理员</li>
                    <li><a href="index.jsp">退出</a></li>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="row" ></div>
</header>
<div>
    <table>
        <tr>
            <td>序号</td>
            <td>用户名</td>
            <td>密码</td>
            <td>身份</td>
            <td>邮箱</td>
            <td>姓名</td>
            <td>手机号</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.username}</td>
                <td>${item.password}</td>
                <td>${item.actor}</td>
                <td>${item.email}</td>
                <td>${item.name}</td>
                <td>${item.telephone}</td>
                <td><a href="udeleteservlet?id=${item.id}">删除</a>|<a href="uupdataservlet?id=${item.id}">修改</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6" style="text-align: left;"><a href="adminadduser.jsp">添加用户</a></td>
        </tr>
    </table>
</div>
<footer class="container-fluid">
    <div class="row">
        <img src="img/banner2.png" alt="失败">
    </div>
    <div class="row company">重庆大学城市科技学院16级软件工程9班</div>
</footer>
</body>
</html>
