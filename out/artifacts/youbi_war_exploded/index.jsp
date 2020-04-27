<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 22/4/2020
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>优比亲子网站</title>
  <!-- Bootstrap -->
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
      <div class="carousel-inner" role="listbox">
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
      </div>

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
  <div class="container">
    <div class="row jx">
      <span>精选</span>
    </div>
    <div class="row paddingtop">
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd01.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd02.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd03.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd04.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
    </div>
    <div class="row paddingtop">
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd05.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd06.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd07.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">
          <img src="img/hd08.jpg" alt="失败">
          <p>亲子旅行，爸爸去哪儿</p>
          <font color="red">¥25</font>
        </div>
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
