package Tservlet;
import Dao.traveldao;
import Entity.travelinfor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
public class hshowservlet extends HttpServlet{
    private static final long serialVersionUID = 1L;
    protected  void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
    {
        this.doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
        System.out.println("dopost!");
        traveldao td=new traveldao();
        List<travelinfor> list =td.getAlltravelinfor();
        req.getSession().setAttribute("list",list);
        System.out.println("dopost!");
        req.getRequestDispatcher("adminguanlitravel.jsp").forward(req,resp);
        System.out.println("dopost!");
    }
}