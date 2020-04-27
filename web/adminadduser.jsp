<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 25/4/2020
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminadduser</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" type="text/css" href="css/common.css">-->
    <link rel="stylesheet" href="css/register.css">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script>
        function checkUsername() {
            var username =$("#username").val();
            var reg_username = /^\w{8,20}$/;
            var flag = reg_username.test(username);
            if (flag){
                $("#username").css("border","");
            }else{
                $("#username").css("border","1px solid red");
            }
            return flag;
        }
        function checkPassword() {
            var username =$("#password").val();
            var reg_username = /^\w{8,20}$/;
            var flag = reg_username.test(username);
            if (flag){
                $("#password").css("border","");
            }else{
                $("#password").css("border","1px solid red");
            }
            return flag;
        }
        function checkEmail(){
            var email =$("email").val();
            var reg_email = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
            var flag = reg_email.test(email);
            if (flag)
            {
                $("#email").css("border","");
            }else{
                $("#email").css("border","1px solid red");
            }
            return flag;
        }
        $(function () {
            $("#registerForm").submit(function () {
                if(checkUsername() && checkPassword() ){
                    $.post("registUserServlet",$(this).serialize(),function (data) {

                    });
                }
                return false;
            });

            $("#username").blur(function (){checkUsername()});
            $("#password").blur(function (){checkPassword()});
            $("#email").blur(function (){checkEmail()});
        });

    </script>
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
</header>

<div class="rg_layout">

    <script language="javascript">
        function isValid(form)
        {
            if (form.username.value=="")
            {
                alert("用户名不能为空！");
                return false;
            }if(form.password.value=="")
        {
            alert("用户密码不能为空！");
            return false;
        }
            if(form.email.value=="")
            {
                alert("邮箱不能为空！");
                return false;
            }
            if(form.name.value=="")
            {
                alert("用户密码不能为空！");
                return false;
            }
            else  if (form.telephone.value=="")
            {
                alert("手机号不能为空！");
                return false;
            }
            else return true;
        }
    </script>
    <div class="rg_form clearfix">
        <div class="rg_form_left">
            <p>添加新用户</p>
            <p>USER ADDING</p>
        </div>
        <div class="rg_form_center">

            <!--注册表单-->
            <!--<form id="registerForm" action="user">-->
            <!--提交处理请求的标识符-->
            <!--<input type="hidden" name="action" value="register">-->
            <form action="uaddservlet" method="post" onSubmit="return isValid(this);">
                <table style="margin-top: 25px;">
                    <tr>
                        <td class="td_left">
                            <label for="username">用户名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="username" name="username" placeholder="请输入账号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="password">密码</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="password" name="password" placeholder="请输入密码">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="actor">身份</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="actor" name="actor" placeholder="请输入user or admin">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="email">Email</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="email" name="email" placeholder="请输入Email">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="name">姓名</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="name" name="name" placeholder="请输入真实姓名">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="telephone">手机号</label>
                        </td>
                        <td class="td_right">
                            <input type="text" id="telephone" name="telephone" placeholder="请输入您的手机号">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="sex">性别</label>
                        </td>
                        <td class="td_right gender">
                            <input type="radio" id="sex" name="sex" value="男" checked> 男
                            <input type="radio" name="sex" value="女"> 女
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            <label for="birthday">出生日期</label>
                        </td>
                        <td class="td_right">
                            <input type="date" id="birthday" name="birthday" placeholder="年/月/日">
                        </td>
                    </tr>
                    <!--<tr>
                        <td class="td_left">
                            <label for="check">验证码</label>
                        </td>
                        <td class="td_right check">
                            <input type="text" id="check" name="check" class="check">
                            <img src="checkCode" height="32px" alt="" onclick="changeCheckCode(this)">
                            <script type="text/javascript">
                                //图片点击事件
                                function changeCheckCode(img) {
                                    img.src="checkCode?"+new Date().getTime();
                                }
                            </script>
                        </td>
                    </tr>-->
                    <tr>
                        <td class="td_left">
                        </td>
                        <td class="td_right check">
                            <input type="submit" class="submit" value="添加">
                            <span id="msg" style="color: red;"></span>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="rg_form_right">
            <p>
                手滑点错？
                <a href="adminguanliuser.jsp">返回</a>
            </p>
        </div>
    </div>
</div>
<footer class="container-fluid">
    <div class="row">
        <img src="img/banner2.png" alt="失败">
    </div>
    <div class="row company">重庆大学城市科技学院16级软件工程9班</div>
</footer>
</body>
</html>
