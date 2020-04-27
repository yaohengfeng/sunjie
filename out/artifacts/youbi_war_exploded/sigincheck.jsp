<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 22/4/2020
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>

    <%      //接收用户名和密码
   /* String users = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
    String pass = request.getParameter("password");*/
    request.setCharacterEncoding("utf-8");
    String users=request.getParameter("username");
    String pass=request.getParameter("password");
    String type=request.getParameter("actor");
    String driver = "com.mysql.cj.jdbc.Driver";
    /*String driver ="com.mysql.jdbc.Driver";*/
    //String url = "jdbc:mysql://127.0.0.1:3306/login";
    String use = "root";
    String password = "123456";

     Class.forName(driver);
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ding?useSSL=false&serverTimezone=UTC","root","123456");

    if ("1".equals(type))
    {
        /*PreparedStatement tmt =conn.prepareStatement("select * from user_tb where actor ='user'");
        ResultSet t=tmt.executeQuery();*/
        /*if(t.next()){*/
        PreparedStatement pStmt = conn.prepareStatement("select * from user_tb where username = '" + users + "' and password = '" + pass + "'and actor = 'user'");
        ResultSet rs = pStmt.executeQuery();
        if(rs.next()){
        response.sendRedirect("signinsuccess.jsp");
         }else{
        response.sendRedirect("sigin.jsp?errNo");//密码不对返回到登陆
        }
            rs.close();
            pStmt.close();
            conn.close();
            /*tmt.close();
            t.close();*/
       /* }
    else{
            tmt.close();
            t.close();
            out.println("<script language='javascript'>alert('密码错误，请重新登录！');window.location.href='sigin.jsp';</script>");
        }*/
    }
    else
        {
        PreparedStatement pStmt = conn.prepareStatement("select * from user_tb where username = '" + users + "' and password = '" + pass + "'and actor = 'admin'");
    ResultSet rs = pStmt.executeQuery();

    if(rs.next()){
        response.sendRedirect("adminsigninsuccess.jsp");
    }else{
        response.sendRedirect("sigin.jsp?errNo");//密码不对返回到登陆
    }
    rs.close();
    pStmt.close();
    conn.close();
    }




%>
