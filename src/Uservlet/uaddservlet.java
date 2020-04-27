package Uservlet;
import Dao.Handlesql;
import Dao.userdao;
import Entity.userinfor;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class uaddservlet extends HttpServlet{
    private static final long serialVersionUID =1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("dopost!");
        /*int medid=req.getIntHeader("medid");*/
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String actor=req.getParameter("actor");
        String email =req.getParameter("email");
        String name =req.getParameter("name");
        String telephone =req.getParameter("telephone");
        userinfor us=new userinfor();
        us.setUsername(username);
        us.setPassword(password);
        us.setActor(actor);
        us.setEmail(email);
        us.setName(new String(name.getBytes("ISO-8859-1"),"UTF-8"));
        us.setTelephone(telephone);
        /*infor.setMedid(medid);*/
        userdao dao =new userdao();
        /*System.out.println(infor);*/
        System.out.println("username"+username);
        System.out.println("username"+us.getUsername());
        dao.adduserinfor(us);
        System.out.println("dopost!");
        req.getRequestDispatcher("ushowservlet").forward(req, resp);
    }
}
