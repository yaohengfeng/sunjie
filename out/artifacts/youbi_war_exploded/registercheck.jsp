<%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 22/4/2020
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"><!--new-->
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String users=request.getParameter("username");
    String pass=request.getParameter("password");
    String email=request.getParameter("email");
    String name=request.getParameter("name");
    String telephone=request.getParameter("telephone");
%>
<%
    String driver = "com.mysql.cj.jdbc.Driver";
    /*String driver ="com.mysql.jdbc.Driver";*/
    String url = "jdbc:mysql://127.0.0.1:3306/ding";
    String use = "root";
    String password = "123456";
    Class.forName(driver);
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ding?useSSL=false&serverTimezone=UTC","root","123456");
    //Connection conn= DriverManager.getConnection(url,use,password);
    //PreparedStatement sql =conn.prepareStatement("insert into tb_user(username,password)values(?,?)");
    PreparedStatement pStmt = conn.prepareStatement("select * from user_tb where username = '" + users + "'");
    ResultSet rs = pStmt.executeQuery();
    if(rs.next()){
        out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='register.jsp';</script>");
    }else{
        PreparedStatement tmt = conn.prepareStatement("Insert into user_tb values(null ,'" + users + "','" + pass+ "','user','"+ email +"','"+ name +"','"+ telephone +"')");
        int rst = tmt.executeUpdate();
        if (rst != 0){
            out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='sigin.jsp';</script>");
        }else{
            out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='register.jsp';</script>");
        }
    }
    pStmt.close();
    conn.close();
   /* sql.setString(1,users);
    sql.setString(2,pass);
    int rtn=sql.executeUpdate();

    */
%>
</body>
</html>
