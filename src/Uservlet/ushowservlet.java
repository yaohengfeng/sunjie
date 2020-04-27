package Uservlet;
import Dao.userdao;
import Entity.userinfor;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ushowservlet extends HttpServlet{
    private static final long serialVersionUID = 1L;
    protected  void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
    {
        this.doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
        userdao ud=new userdao();
        List<userinfor> list =ud.getAlluserinfor();
        req.getSession().setAttribute("list",list);
        req.getRequestDispatcher("adminguanliuser.jsp").forward(req,resp);
    }
}
