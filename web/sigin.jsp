<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 22/4/2020
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <title>Title</title>
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
        
    </style>
</head>
<body>
<%
    String flag = request.getParameter("errNo");
    try{
        if(flag!=null)
            out.println("<script language='javascript'>alert('用户名不存在或密码错误！');window.location.href='sigin.jsp';</script>");
    }catch(Exception e){
        e.printStackTrace();
    }
%>
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
                    <li><a href="index.jsp">网站首页</a></li>
                    <li><a href="#">活动精选</a></li>
                    <li><a href="#">门票购买</a></li>
                    <li><a href="#">精选评论</a></li>
                    <li><a href="#">关于我们</a></li>
                </ul>
                <!--<form class="navbar-form navbar-left">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                  </div>
                  <button type="submit" class="btn btn-default">Submit</button>
                </form>-->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="sigin.jsp">登录</a></li>
                    <li><a href="register.jsp">注册</a></li>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="row" ></div>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
       <!-- <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/banner_1.jpg" alt="...">
                <div class="carousel-caption">

                </div>
            </div>
            <div class="item">
                <img src="img/banner_2.jpg" alt="...">
                <div class="carousel-caption">

                </div>
            </div>
            <div class="item">
                <img src="img/banner_3.jpg" alt="...">
                <div class="carousel-caption">

                </div>
            </div>
        </div>-->

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>
<section id="login_wrap">
    <div class="fullscreen-bg" style="background: url(img/bg.png);height: 532px;">

    </div>
    <div class="login-box">
        <div class="title">
            <!--<img src="" alt="失败">-->
            <span class="ding">欢迎登录叮勾！</span>
        </div>
        <div class="login_inner">

            <!--登录错误提示消息-->
            <div id="errorMsg" class="alert alert-danger" ></div>
            <form id="loginForm" action="sigincheck.jsp" method="post" accept-charset="utf-8">
                <input type="hidden" name="action" value="login"/>
                <input name="username" type="text" placeholder="请输入账号" autocomplete="off">
                <input name="password" type="text" placeholder="请输入密码" autocomplete="off">
                <!--<div class="verify">
                    <input name="check" type="text" placeholder="请输入验证码" autocomplete="off">
                    <span><img src="checkCode" alt="" onclick="changeCheckCode(this)"></span>
                    <script type="text/javascript">
                        //图片点击事件
                        function changeCheckCode(img) {
                            img.src="checkCode?"+new Date().getTime();
                        }
                    </script>
                </div>-->
                <select name="actor">
                    <option value="1">普通用户</option>
                    <option value="2">管理员</option>
                </select>
                <div class="submit_btn">
                    <button >登录</button>    <!--type="button"-->
                    <div class="auto_login">
                        <input type="checkbox" name="" class="checkbox">
                        <span>自动登录</span>
                    </div>
                </div>
            </form>
            <div class="reg">没有账户？<a href="register.jsp">立即注册</a></div>
        </div>
    </div>
</section>
<footer class="container-fluid">
    <div class="row">
        <img src="img/banner2.png" alt="失败">
    </div>
    <div class="row company">重庆大学城市科技学院16级软件工程9班</div>
</footer>
<script src="js/jquery-1.11.0.min.js"></script>
</body>
</html>
